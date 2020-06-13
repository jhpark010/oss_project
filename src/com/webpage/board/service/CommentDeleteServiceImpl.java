package com.webpage.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpage.board.comment.model.BoardCommentDAO;

public class CommentDeleteServiceImpl implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int comment_num =  Integer.parseInt(request.getParameter("comment_num"));
		
		BoardCommentDAO dao = BoardCommentDAO.getInstance();
		dao.comment_delete(comment_num);
		
	}

}
