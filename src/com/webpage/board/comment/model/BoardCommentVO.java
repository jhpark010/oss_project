package com.webpage.board.comment.model;

import java.sql.Timestamp;

public class BoardCommentVO {
	
	private int num;
	private int board_num;
	private String nick;
	private String content;
	private Timestamp date;
	
	public BoardCommentVO() {
		
	}
	

	public BoardCommentVO(int num, int board_num, String nick, String content, Timestamp date) {
		super();
		this.num = num;
		this.board_num = board_num;
		this.nick = nick;
		this.content = content;
		this.date = date;
	}



	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	

}
