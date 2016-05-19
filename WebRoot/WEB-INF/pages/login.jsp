<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>欢迎访问CRM</title>
    <meta http-equiv=Content-Type content="text/html; charset=utf-8" />
    <meta content="MSHTML 6.00.2600.0" name=GENERATOR />
    <style type="text/css">
	.cla1 {
	FONT-SIZE: 12px; COLOR: #4b4b4b; LINE-HEIGHT: 18px; TEXT-DECORATION: none
	}
	.login_msg{
		font-family:serif;
	}
	.login_msg .msg{
		background-color: #acf;
	}
	.login_msg .btn{
		background-color: #9be;
		width: 73px;
		font-size: 18px;
		font-family: 微软雅黑;
	}
	</style>
	<link href="${pageContext.request.contextPath }/css/frame/style.css" type=text/css rel=stylesheet />
  </head>
  
  <body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0" background="${pageContext.request.contextPath }/images/frame/login/rightbg.jpg">
    <div align="center">
		<table border="0" width="1140px" cellspacing="0" cellpadding="0" id="table1">
			<tr>
				<td height="93"></td>
				<td></td>
			</tr>
			<tr>
				<td background="${pageContext.request.contextPath }/images/frame/login/right.jpg"  width="740" height="412"></td>
				<td class="login_msg" width="400">
					<form action="${pageContext.request.contextPath }/login.do" method="post">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="${pageContext.request.contextPath }/images/frame/login/title.png" width="185" height="26"/>
						<br/>
						<br/>
						用户名：<input class="msg" type="text" name="username"><br/><br/>
						密&nbsp;码：<input class="msg" type="password" name="password" /><br/><br/>
						<!-- tip message -->
						<font style="color:red"><s:fielderror></s:fielderror></font>
						<!-- end of tip message -->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="btn" type="submit" value=" 登录 "/>
					</form>
				</td>
			</tr>
		</table>
	</div>
  </body>
</html>
