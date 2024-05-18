<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select User</title>
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
	text-align: center;
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
	<jsp:include page="navbar.jsp" />
	<br>
	
	<div class="container">
		<div class="form-container">
			<form method="post" action="select">
			<center><h3>Select User: </h3></center>
			<br>
				<label for="id">User ID:</label>
				<input type="text" id="id" name="uid" class="form-input" required>
				<br> 
			    <input type="submit" value="Submit" class="button">
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<jsp:include page="footer.jsp" />
</body>
</html>