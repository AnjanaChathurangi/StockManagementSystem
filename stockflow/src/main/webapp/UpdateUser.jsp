<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
<link rel="stylesheet" href="homeStyle.css">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
}

.container {
	text-align: center;
	margin-top: 50px;
}

.header {
	font-size: 24px;
	color: #333;
}

.form-container {
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	text-align: left;
}

.form-input {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 3px;
}

.button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	border: 2px solid #0056b3;
	border-radius: 5px;
}
</style>
</head>
<body>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String userName = request.getParameter("uname");
String password = request.getParameter("pass");
String phone = request.getParameter("phone");
String type = request.getParameter("type");
%>
	<jsp:include page="navbar2.jsp" />
	<br>

	<div class="container">
		<h1 class="header">Update User</h1>
		<div class="form-container">
			<form method="post" action="update">
				<label for="id">User ID:</label> <input type="text" id="uid"
					name="id" class="form-input" value="<%= id %>" readonly><br>

				<label for="Name">Name:</label> <input type="text" id="name"
					name="name" class="form-input" value="<%= name %>"><br>

				<label for="Email">Email:</label> <input type="text" id="email"
					name="email" class="form-input" value="<%= email %>"><br>

				<label for="userName">UserName:</label> <input type="text"
					id="UserName" name="username" class="form-input"
					value="<%= userName %>"><br> <label for="password">Password:</label>
				<input type="password" id="password" name="password"
					class="form-input" value="<%= password %>"><br> <label
					for="phone">Phone Number:</label> <input type="tel" id="phone"
					name="phone" class="form-input" value="<%= phone %>"><br>

				<label for="type">Type:</label> <input type="text" id="type"
					name="type" class="form-input" value="<%= type %>"><br>


				<input type="submit" value="Update User" class="button">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>