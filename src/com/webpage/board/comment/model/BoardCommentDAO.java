package com.webpage.board.comment.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.webpage.user.util.JdbcUtil;

public class BoardCommentDAO {

	private static BoardCommentDAO instance = new BoardCommentDAO();

	private BoardCommentDAO() {

		try {
			InitialContext ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql");

		} catch (Exception e) {
			System.out.println("커넥션풀 작업 도중 에러 발생");
		}
	}

	public static BoardCommentDAO getInstance() {
		return instance;
	}

	private DataSource ds;
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<BoardCommentVO> getList(String comment_board){

		ArrayList<BoardCommentVO> list = new ArrayList<>();

		String sql = "select * from board_comment where comment_board=? order by comment_num asc"; //오름차순 정렬방식으로 가져온다.

		try {

			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, comment_board);
			rs = pstmt.executeQuery();

			while(rs.next()) {

				int num = rs.getInt("comment_num");
				int board_num = rs.getInt("comment_board"); //게시판 번호(외래키)
				String nick = rs.getString("comment_id");
				String content = rs.getString("comment_content");
				Timestamp date = rs.getTimestamp("comment_date");

				BoardCommentVO bcVo = new BoardCommentVO(num, board_num, nick, content, date);

				list.add(bcVo);

			}

		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}

		return list;
	}
	
	public void comment_regist(int board_num, String comment_id, String content) {
		
		String sql = "insert into board_comment(comment_board,comment_id,comment_content) values(?,?,?)";
		
		try {
			System.out.println("디비 시작");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			pstmt.setString(2, comment_id);
			pstmt.setString(3, content);
			
			System.out.println("업데이트 전");
			
			pstmt.executeUpdate();
			
			System.out.println("업데이트 후");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		System.out.println("디비 끝냄");
	}
	
	public BoardCommentVO getComment(int comment_num) {
		BoardCommentVO vo = new BoardCommentVO();
		
		String sql = "select * from board_comment where comment_num=?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comment_num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setNum(rs.getInt("comment_num"));
				vo.setBoard_num(rs.getInt("comment_board"));
				vo.setNick(rs.getString("comment_id"));
				vo.setContent(rs.getString("comment_content"));
				vo.setDate(rs.getTimestamp("comment_date"));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	public void comment_update(int comment_num,String comment_content) {
		
		String sql = "update board_comment set comment_content=? where comment_num = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, comment_content);
			pstmt.setInt(2, comment_num);
			
			pstmt.executeUpdate();
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
	}
	
	public void comment_delete(int comment_num) {
		
		String sql = "delete from board_comment where comment_num = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comment_num);
			
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}
}
