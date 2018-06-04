<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<base href="<%=basePath%>">
</head>
<body>
	<h1>welcome liweihai</h1>
	<input type="button" value="register" onclick="register()" id="register">
	<input type="button" value="login" onclick="login()" id="login">
	<span><% out.println("your ip address is:"+request.getRemoteAddr());%></span>
	<p>the date is :<%=new Date().toLocaleString() %></p>
	<table width="100%" border="1" align="center">
		<tr bgcolor="#949494">
			<th>Header Name</th><th>Header value</th>
		</tr>
		<%
			Enumeration headerNames =request.getHeaderNames();
			while(headerNames.hasMoreElements()){
				String paramName = (String)headerNames.nextElement();
				String paramValue  = request.getHeader(paramName);
				out.print("<tr><td>"+paramName+"</td>\n");
				out.println("<td>"+paramValue+"</td></tr>\n");
			}
		%>
	</table>
	<a href="javascript:void(0);" onclick="sendAjaxReq();">test</a>
	<div id="div1"></div>
</body>
<script type="text/javascript">
	function createAjaxObj(){
		var req;
		if(window.XMLHttpRequest){
			req=new XMLHttpRequest();
		}else{
			req=new ActiveXObject("Msxml2.XMLHTTP");
		}
		return req;
	}

	function sendAjaxReq(){
		var req=createAjaxObj();
		req.open("get", "myajax.do?method=test1&uname=zhangsan");
		req.setRequestHeader("accept", "application/json");
		req.onreadystatechange = function(){
			if(4==req.readyState){
				if(200==req.status){
					var responseText = req.responseText;
					alert(responseText);
					eval("var result="+responseText);
					document.getElementById("div1").innerHTML=result[0].uname;
				}
			}
		}
		req.send(null);
	}
</script>
</html>