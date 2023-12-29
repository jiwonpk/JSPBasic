<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String kor = request.getParameter("kor");
    String eng = request.getParameter("eng");
    String meth = request.getParameter("meth");
    
    int re = Integer.parseInt(kor);
    int re1 = Integer.parseInt(eng);
    int re2 = Integer.parseInt(meth);
    
    int result = (re+re1+re2)/3;
    
    if(result >=60){
    	response.sendRedirect("quiz01_ok.jsp");
    }else{
    	response.sendRedirect("quiz01_no.jsp");
    }
    %>
    
