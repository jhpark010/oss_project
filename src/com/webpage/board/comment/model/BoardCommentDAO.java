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
}
