package com.webpage.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpage.board.comment.model.BoardCommentDAO;

public class CommentUpdateServiceImpl implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int comment_num = Integer.parseInt(request.getParameter("comment_num"));
		String comment_content = request.getParameter("comment_content");
		
		BoardCommentDAO dao = BoardCommentDAO.getInstance();
		dao.comment_update(comment_num, comment_content);
		
	}

}
