package com.webpage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpage.board.service.ContentServiceImpl;
import com.webpage.board.service.GetListServiceImpl;
import com.webpage.board.service.IBoardService;
import com.webpage.board.service.RegistServiceImpl;

/**
 * Servlet implementation class BoardController
 */
//@WebServlet("/board/BoardController")
@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request,response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		System.out.println(command); //경로확인용 (추후 삭제 할 것)
		
		IBoardService sv;
		
		if(command.equals("/board/list.board")) {
			
			sv = new GetListServiceImpl();
			sv.execute(request, response);
			
			
			//화면에 값을 전달하기 위해 포워드 한다.
			RequestDispatcher dp = request.getRequestDispatcher("board_list.jsp");
			dp.forward(request, response);
			
		}else if(command.equals("/board/write.board")) {	//게시판 목록에서 작성 버튼 클릭하여 게시글 작성 요청
			
			response.sendRedirect("/Webpage/board/board_write.jsp");		//게시글 등록 하는 페이지로 이동
			
		}else if(command.equals("/board/regist.board")) {	//게시글 등록 요청
			
			sv = new RegistServiceImpl();
			sv.execute(request, response);
			
			response.sendRedirect("list.board");
			
		}else if(command.equals("/board/content.board")) {
			
			sv = new ContentServiceImpl();
			sv.execute(request, response);
			
			RequestDispatcher dp = request.getRequestDispatcher("board_content.jsp");
			dp.forward(request, response);
			
		}
		
	}

}
