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
      <img src="fish.jpg">
    </div>
    <div id="box">
    <%
   String username = "";
   String password = "";
   Cookie[] cookies = request.getCookies();
  	if(cookies!=null&&cookies.length>0)
  	{
  		for(Cookie c:cookies)
  		{
  			if(c.getName().equals("username"))
  			{
  				username = c.getValue();
  			}
  			if(c.getName().equals("password"))
  			{
  				password = c.getValue();
  			}
  		}
  	}
   %>
      <form action="dologin.jsp" method="post">
        <p class="main">
        	<label>用户名：</label>
        	<input name="username" value="<%=username%>">
        	<label>密码：</label>
        	<input type="password" name="password" value="<%=password%>">
      </p>
      <p>
      	<td colspan = "2"><input type="checkbox" name = "isUserCookie" />十天之内记住此账号</td>
      </p>
      <p class="space">
        <td colspan="2" align="center"><input type="submit" name="submit" value="登录" /></td>
      </p>
      </form>
    </div>
  </div>
  </body>
</html>
