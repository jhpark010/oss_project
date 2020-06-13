package com.webpage.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpage.board.comment.model.BoardCommentDAO;

public class CommentServiceImpl implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("게시물 번호(커멘트서비스):"+request.getParameter("comment_board"));
		
		int board_num = Integer.parseInt(request.getParameter("comment_board"));
		String id = request.getParameter("comment_id");
		String content = request.getParameter("comment_content");
		
		System.out.println("번호:"+board_num);
		System.out.println("닉넴:"+id);
		System.out.println("내용:"+content);
		
		BoardCommentDAO dao = BoardCommentDAO.getInstance();
		dao.comment_regist(board_num, id, content);
	
		
		
	}

}
