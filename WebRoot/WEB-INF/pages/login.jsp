<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>欢迎访问xxx</title>
  </head>
  
  <body>
    welcome to login page.<br/>
    <s:fielderror></s:fielderror>
    <hr/>
    <form action="${pageContext.request.contextPath }/login.do" method="post">
    	username:<input type="text" name="username" /><br/>
    	password:<input type="password" name="password" /><br/>
    	<input type="submit" value="submit" />
    </form>
  </body>
</html>
