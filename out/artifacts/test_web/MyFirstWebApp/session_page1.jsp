<%@ page import="java.text.*"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的JSP页面</title>
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
    <h1>session内置对象</h1>
    <hr>
    <%
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   	 	Date d = new Date(session.getCreationTime());
   	 	session.setAttribute("username", "admin");
   	 	session.setAttribute("password", "123456");
   	 	session.setAttribute("age", "20");
   	 	//session.setMaxInactiveInterval(10);
    %>   
    Session创建时间<%=sdf.format(d)%><br>
    SessionID;<%=session.getId()%><br>
    Session获取用户名;<%=session.getAttribute("username")%><br>
  	  <a href="session_page2.jsp" target="_blank">跳转到page2</a>
  </body>
</html>
