<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register here!</title>
</head>
<body>
	<h2>Register here</h2>
	<div class="register">
	<form method="post" action="reg">
		<label><b>Name</b></label><br><br>
		<input type="text" name="uname" id="textbox" placeholder="enter name here"/><br><br>
		<label><b>Email</b></label><br><br>
		<input type="email" name="mail" id="textbox" placeholder="enter email"/><br><br>
		<label><b>Password</b></label><br><br>
		<input type="password" name="pass" id="textbox" placeholder="enter the password"/>
		<label><b>Gender</b></label>
		<br><br><input type="radio" name="gender" value="male"/>Male
		<input type="radio" name="gender" value="female"/>Female
		<input type="radio" name="gender" value="other"/>Other
		<label><b>Address</b></label><br><br>
		<textarea rows="2" cols="20" id="textBox" type="text" name="address"></textarea>
		<br><br><input type="submit" id="sub" value="Register">
		<br><br>
		<a href="login.jsp">Already registered? Sign in instead </a>
		</form>
		</div>

</body>
</html>