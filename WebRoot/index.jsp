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
%>
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
</body>
<script type="text/javascript">
	
</script>
</html>