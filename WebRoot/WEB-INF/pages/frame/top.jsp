<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>CRM Top frame</title>
    <meta http-equiv=Content-Type content="text/html; charset=utf-8">
	<link href="${pageContext.request.contextPath }/css/frame/style.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript">
		//Get the date info
		var dataStr = (function(){
			tmpDate = new Date();
			date = tmpDate.getDate();
			month = tmpDate.getMonth() + 1;
			year = tmpDate.getFullYear();
			var msg = year + "年" + month + "月" + date + "日" + " ";
			myArray = new Array(6);
			myArray[0] = "星期日";
			myArray[1] = "星期一";
			myArray[2] = "星期二";
			myArray[3] = "星期三";
			myArray[4] = "星期四";
			myArray[5] = "星期五";
			myArray[6] = "星期六";
			weekday = tmpDate.getDay();
			msg += myArray[weekday];
			return msg;
		})();
	</script>
  </head>
  
  <body bgColor="#CEEBFF" leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
	 <table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1" height="27">
		<tr>
			<td>
			<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table2">
				<tr>
					<td width="420">
						<img border="0" src="<%=basePath %>images/frame/top/topbg.jpg" width="436" height="80">
					</td>
					<td background="<%=basePath %>images/frame/top/topbg.jpg" valign="bottom">
						<div align="right">
							<table border="0" width="145" id="table7" cellspacing="0" cellpadding="0">
								<tr>
									<td width="150" height="24"></td>
								</tr>
								<tr>
									<td width="150" height="35"><p align="right"><font color="#FFFFFF">欢迎您<b></b></font></td>
								</tr>
							</table>
						</div>
					</td>
					<td width="374" background="<%=basePath %>images/frame/top/topright.jpg" valign="top">
						<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4">
							<tr>
								<td>
								<div align="right">
									<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5">
										<tr>
											<td height="19">
											<p align="center">
											<img border="0" src="<%=basePath %>images/frame/top/calendar.gif" align="right">&nbsp;</td>
											<td width="189"><font color="#ffffff"> 今天是 <script>document.write(dataStr);</script></font></td>
										</tr>
									</table>
								</div>
								</td>
							</tr>
							<tr>
								<td height="20">  </td>
							</tr>
							<tr>
								<td>
								<div align="right">
									<table border="0" width="215" cellspacing="0" cellpadding="0" id="table6" height="23">
										<tr>
											<td width="26"><img border="0" src="<%=basePath %>images/frame/top/pwd.gif"></td>
											<td width="51" valign="middle">
												<a href="../staff/updPwd.html" target="right"><font color="ffffff">更改口令</font></a>
											</td>
											<td width="31"><p align="center"><img border="0" src="<%=basePath %>images/frame/top/login.gif"></td>
											<td width="55" valign="middle"><a href="../login.html" target="_top"><font color="ffffff">重新登陆</font></a></td>
										</tr>
									</table>
								</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
	<table border="0" width="100%" cellspacing="0" cellpadding="0" height="10" id="table3">
		<tr>
			<td style="border-bottom: 1px solid #ffffff; filter: progid:dximagetransform.microsoft.gradient(startcolorstr='#0075C4', endcolorstr='#ffffff', gradienttype='1'">　</td>
		</tr>
	</table>
  </body>
</html>
