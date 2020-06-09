package com.webpage.board.model;

import java.sql.Timestamp;

public class BoardVO {
	
	private int num;
	private String category;
	private String writer;
	private String title;
	private String content;
	private Timestamp regdate; //시간형
	private int hit; //조회수
	

	public BoardVO() {
		
	}
	
	public BoardVO(int num, String category, String writer, String title, String content, Timestamp regdate, int hit) {
		super();
		this.num = num;
		this.category = category;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.hit = hit;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	
}
