<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Here</title>
</head>
<body>
	<h1><b>Login <small>with your details</small></b></h1>
	<div class="lgn">
			<form action="log" method="post">
				<label><b>Name</b></label><br>
				<input type="text" id="textBox" placeholder="enter the name" name="uname"/><br>
				<label><b>Password</b></label>
				<input type="password" id="textBox" placeholder="password" name="pass"/><br>
				<input type="submit" id="sub" name="Login"/><br>
				<a href="register.jsp">New user? Register here</a>
			</form>
	</div>
</body>
</html>