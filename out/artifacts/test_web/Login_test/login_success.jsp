<%@page import="java.awt.Checkbox"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <div id="container">
    <div class="logo">
      <a href="dologin.jsp"><img src="fish.jpg" alt=""></a>
    </div>
    <div id="box">
    	<%
    	String str =  "";
    	if(session.getAttribute("LoginUser")!=null)
    		str = session.getAttribute("LoginUser").toString();
    	%>
      	欢迎您<font color="red">
      	<%= str %></font>，登录成功！
    </div>
  </div>
  <br>
  <br>
  <%
  	String[] isUseCookie = request.getParameterValues("isUserCookie");
  	if(isUseCookie!=null&&isUseCookie.length>0)
  	{
  	String username = request.getParameter("username");
  	String password = request.getParameter("password");
  	Cookie usernameCookie = new Cookie("username",username);
  	Cookie passwordCookie = new Cookie("password",password);
  	usernameCookie.setMaxAge(864000);
  	passwordCookie.setMaxAge(864000);
  	response.addCookie(usernameCookie);
  	response.addCookie(passwordCookie);
  	}
  	else
  	{
  	Cookie[] cookies = request.getCookies();
  	if(cookies!=null&&cookies.length>0)
  		for(Cookie c:cookies)
  		{
  		if(c.getName().equals("username")||c.getName().equals("password"));
  		c.setMaxAge(0);
  		response.addCookie(c);
  		}
  	}
  
   %>
  <a href="index.jsp" target="_blank">查看用户信息</a>
  </body>
</html>
