<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="LoginUser" class="com.po.Users" scope="page"/>
<jsp:useBean id="userDAO" class="com.dao.UsersDAO" scope="page"/>
<jsp:setProperty property="*" name="LoginUser"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	if(userDAO.usersLogin(LoginUser))
	{
		session.setAttribute("LoginUser",LoginUser.getPassword());
		request.getRequestDispatcher("login_success.jsp").forward(request,response);
	}
	else
	{
		response.sendRedirect("login_failure.jsp");
	}
%>