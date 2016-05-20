<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>CRM Home</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>
  
	<frameset rows="100,*" framespacing="0px" frameborder="no">
		<frame src="<%=basePath %>/ui_frame_top.do" scrolling="no"/>
		<frameset id="main" cols="170,9,*" framespacing="0px" frameborder="no" >
			<frameset rows="30,*,40" framespacing="0px" frameborder="no" >
				<frame src="<%=basePath %>/ui_frame_left_top.do" scrolling="no"/>
				<frame src="<%=basePath %>/ui_frame_left_centre.do" scrolling="yes"/>
				<frame src="<%=basePath %>/ui_frame_left_bottom.do" scrolling="no"/>
			</frameset>
			<frame src="<%=basePath %>/ui_frame_control.do" scrolling="no"/>
			<frame src="<%=basePath %>/ui_frame_centre.do" name="right" scrolling="no"/>
		</frameset>
	</frameset>

</html>
