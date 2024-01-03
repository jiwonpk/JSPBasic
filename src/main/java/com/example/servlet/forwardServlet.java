package com.example.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class forwardServlet
 */
@WebServlet("/forward")
public class forwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public forwardServlet() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		
		System.out.println("넘어온값을 소비:" + name);
		
		//리퀘스트에 강제로 값을 저장한다
		request.setAttribute("data", "홍길동 20세");
		
		
		//자바코드로 포워드를 사용하는 방법.
		//RequestDispatcher dp= request.getRequestDispatcher("forward_ex05.jsp");
		//dp.forward(request, response);
		
		request.getRequestDispatcher("actionTag/forward_ex05.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}