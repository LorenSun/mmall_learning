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
   	 	//session.setAttribute("username", "admin");
    %>   
    Session创建时间<%=sdf.format(d)%><br>
    SessionID;<%=session.getId()%><br>
    Session获取用户名;<%=session.getAttribute("username")%><br>
  	Session中保存的属性有：
  	<% 
  	String[] str = session.getValueNames();
  	for(int i =0;i<str.length;i++)
  		out.println(str[i]+"&nbsp;&nbsp");
  	%>
  </body>
</html>
