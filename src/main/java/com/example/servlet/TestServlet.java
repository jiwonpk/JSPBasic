package com.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. URL맵핑 - 요청에 대해서 클래스를 연결하는 힌트
//@WebServlet("/apple") //클라언트에서 /apple 요청이 들어오면 이 클래스로 연결
public class TestServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//System.out.println("서브릿 get메서드 실행됨");
		//출력을 클라이언트로
		resp.setContentType("text/html; charset=UTF-8"); //내가 보내는 데이터에대한 타입
		
		PrintWriter out= resp.getWriter();
		out.println("<br>헬로월드</br>");
		out.println("<br>");
		out.println("<br>Helloworld</br>");
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	
	
	
}
