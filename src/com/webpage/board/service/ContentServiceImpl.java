package com.webpage.board.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpage.board.model.BoardDAO;
import com.webpage.board.model.BoardVO;

public class ContentServiceImpl implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String num = request.getParameter("num");
		BoardDAO dao = BoardDAO.getInstance();
		
		Cookie[] arr = request.getCookies();
		String check = "";
		
		for(Cookie c:arr) {
			if(c.getName().equals("hitNum"+num)) {
				check=c.getValue();
			}
		}
		
		if(!check.equals(num)) {
			dao.upHit(num); //데이터베이스에 조회수 1 증가한 값을 추가
			//중복증가 방지 쿠키
			Cookie hitAdd = new Cookie("hitNum" + num , num);
			hitAdd.setMaxAge(5); //5초 저장
			response.addCookie(hitAdd);

		}
		
		
		//게시글 정보를 가져오는 메서드
		BoardVO vo = dao.getContent(num);
		request.setAttribute("board_writer", vo.getWriter());
		//화면으로 전달하기 위해 board_content 이름으로 강제 저장
		request.setAttribute("board_content", vo);
		
		
	}

}
