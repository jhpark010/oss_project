package com.webpage.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.webpage.user.util.JdbcUtil;

public class UserDAO {
	
	private static UserDAO instance = new UserDAO();
	
	private UserDAO() {
		try {
			InitialContext ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
		}catch(NamingException e) {
			System.out.println("커넥션풀 시도 중 에러 발생");
		}
	}
	
	public static UserDAO getInstance() {
		return instance;
	}
	
	DataSource ds;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int idConfirm(String id) {
		int result = 0;
		
		String sql = "select * from user where id=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}else {
				result = 0;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result;
		
	}
	
	public int nickConfirm(String nick) {
		int result = 0;
		
		String sql = "select * from user where nick=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nick);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}else {
				result = 0;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result;
		
	}
	
	public int signUp(UserVO vo) {
		int result = 0;
		
		String sql = "insert into user(id,pw,nick,email,address) value(?,?,?,?,?)";
		
		try {
			conn = ds.getConnection();
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getNick());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getAddress());
			
			result = pstmt.executeUpdate(); //성공하면 1을 리턴
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	public int login(String id,String pw) {
		int result = 0;
		
		String sql = "select * from user where id=? and pw=?";
		
		try {
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1; //로그인 성공 시 1을 리턴
			}else {
				result = 0; //로그인 실패 시 0을 리턴
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		
		return result;
	}
	
	public UserVO getUserInfo(String id) {
		UserVO vo = new UserVO();
		
		String sql = "select * from user where id=?";
		try {

			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setNick(rs.getString("nick"));
				vo.setEmail(rs.getString("email"));
				vo.setAddress(rs.getString("address"));
				vo.setRegdate(rs.getTimestamp("regdate"));
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	public UserVO find_Id(String nick,String email) {
		UserVO vo = new UserVO();
		
		String sql = "select * from user where nick=? and email=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nick);
			pstmt.setString(2, email);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setId(rs.getString("id"));
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
		
	}
	
	public UserVO find_Pw(String id,String nick) {
		UserVO vo = new UserVO();
		
		String sql = "select * from user where id=? and nick=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, nick);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setPw(rs.getString("pw"));
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
		
	}
	
	public int delete(String id) {
		int result = 0;
		
		String sql = "delete from user where id=?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	public int modify(UserVO vo) {
		int result = 0;
		
		String sql = "update user set pw=?,nick=?,email=?,address=? where id=?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getPw() );
			pstmt.setString(2, vo.getNick() );
			pstmt.setString(3, vo.getEmail() );
			pstmt.setString(4, vo.getAddress() );
			pstmt.setString(5, vo.getId() );
			
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
