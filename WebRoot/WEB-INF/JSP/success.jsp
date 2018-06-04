<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>upload file</title>
</head>
<body>
	<h1>register success</h1>
	<span>当前用户登录的用户名为：</span>${sessionScope.uname}
	<span>当前用户登录的用户密码为：</span>${sessionScope.upassword}
	<form action="upload.do" method="post" enctype="multipart/form-data">
		<p>name:</p><input type="text" name="name"/><br>
		<input type="file" name="file"/><br>
		<input type="submit" value="upload"/>
	</form>
</body>
</html>