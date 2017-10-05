<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"%>
<%
	response.setContentType("text/html;charset=utf-8");
	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	PrintWriter ot = response.getWriter();
	ot.println("Hello World!1");
	out.println("Hello World!2");
	//请求重定向
	//response.sendRedirect("request.jsp");
	//请求转发
	request.getRequestDispatcher("request.jsp").forward(request,response);
%>