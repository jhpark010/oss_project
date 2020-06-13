package com.webpage.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpage.board.comment.model.BoardCommentDAO;
import com.webpage.board.comment.model.BoardCommentVO;

public class CommentModifyServiceImpl implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardCommentDAO dao = BoardCommentDAO.getInstance();
		
		//댓글 수정을 위해
		int comment_num =  Integer.parseInt(request.getParameter("comment_num"));
		BoardCommentVO vo = dao.getComment(comment_num);
		request.setAttribute("comment_num", vo.getNum());
		
	}

}
