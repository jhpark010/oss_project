package com.webpage.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpage.board.model.BoardDAO;


public class UpdateServiceImpl implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String num = request.getParameter("num");
		String category = request.getParameter("category");
		String content = request.getParameter("content");
		
		System.out.println("num의 값 : "+num);
		System.out.println(category);
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.update(num, category, content);
		
		
	}

}
