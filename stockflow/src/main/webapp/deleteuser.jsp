<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete User</title>
<link rel="stylesheet" href="homeStyle.css">
<style>
<
style>body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	text-align: center;
}

.header {
	font-size: 24px;
	color: #333;
}

.form-container {
	background-color: #f9f9f9;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	text-align: left;
	width: 100%;
	max-width: 400px;
	margin: 0 auto;
}

.form-input {
	background-color: #fff;
	width: 96%;
	padding: 12px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.button {
	text-align: center;
	padding: 12px 20px;
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	border: 2px solid #0056b3;
	border-radius: 5px;
	display: inline-block;
	font-size: 16px;
	margin-top: 10px;
	cursor: pointer;
}

.button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<jsp:include page="navbar2.jsp" />
	<br>

	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String uname = request.getParameter("uname");
	String pass = request.getParameter("pass");
	String phone = request.getParameter("phone");
	String type = request.getParameter("type");
	%>

	<div class="container">
		<h1 class="header">Delete User</h1>
		<br>
		<div class="form-container">
			<form method="post" action="delete">
				<label for="id">User ID:</label> <input type="text" id="uid"
					name="uid" class="form-input" value="<%=id%>" readonly><br>

				<label for="Name">Name:</label> <input type="text" id="name"
					name="name" class="form-input" value="<%=name%>" readonly><br>

				<label for="Email">Email:</label> <input type="text" id="email"
					name="email" class="form-input" value="<%=email%>" readonly><br>

				<label for="userName">UserName:</label> <input type="text"
					id="UserName" name="UserName" class="form-input" value="<%=uname%>"
					readonly><br> <label for="phone">Phone Number:</label>
				<input type="tel" id="phone" name="phone" class="form-input"
					value="<%=phone%>" readonly><br> <label for="type">Type:</label>
				<input type="tel" id="phone" name="phone" class="form-input"
					value="<%=type%>" readonly><br> <input type="submit"
					value="Delete User" class="button">
			</form>
		</div>
	</div>
	<br>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>