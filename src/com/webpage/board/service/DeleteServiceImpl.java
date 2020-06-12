package com.webpage.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpage.board.model.BoardDAO;

public class DeleteServiceImpl implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String num = request.getParameter("num");
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.delete(num);
		
		
	}

}
