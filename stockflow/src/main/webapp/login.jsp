<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="loginStyles.css">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<jsp:include page="navbar.jsp" /> 
	<br>
	<br>
	<h1>Login</h1>

	<form method="post" action="log">
		<label for="username">Username:</label> <input type="text"
			id="username" name="username" required><br> <label
			for="password">Password:</label> <input type="password" id="password"
			name="password" required>
			<br> <br> <input type="submit" value="Login">
	</form>
	
	<br>
	<br>
	<br>
	<br>

	<jsp:include page="footer.jsp" /> 

</body>
</html>
