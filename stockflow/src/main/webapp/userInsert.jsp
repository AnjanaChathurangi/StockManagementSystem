<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
<link rel="stylesheet" href="homeStyle.css">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #78a1fa;
	margin: 0;
	padding: 0;
}

.header {
	margin-bottom: 15px;
	text-align: center;
}

.form-container {
	text-align: center;
	margin-bottom: 15px;
	margin-left: 20px;
}

#type{
	text-align:left;
	margin-bottom: 15px;
	margin-left: 0px;
}

label {
	display: block;
	font-weight: bold;
	text-align: left;
	margin-left:65px;
	font-size: 18px;
}

.form-input {
	width: 90%;
	padding: 8px;
	font-size: 16px;
	border: 1px solid #a2bee9;
	border-radius: 4px;
}

input[type="submit"], input[type="button"] {
	background-color: #3f58e2;
	color: #fff;
	padding: 8px 16px;
	font-size: 16px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>
<body>
	<jsp:include page="navbar2.jsp" />
	<br>
	<div class="container">
		<h1 class="header">Add User</h1>
		<div class="form-container">
			<form method="post" action="insert">
				<label for="id">User ID:</label> <input type="text" id="uid"
					name="uid" class="form-input" required><br> <label
					for="Name">Name:</label> <input type="text" id="name" name="name"
					class="form-input" required><br> <label for="Email">Email:</label>
				<input type="email" id="email" name="email" class="form-input"
					required><br> <label for="userName">UserName:</label>
				<input type="text" id="UserName" name="UserName" class="form-input"
					required><br> <label for="password">Password:</label>
				<input type="password" id="password" name="password"
					class="form-input" required><br> <label for="phone">Phone
					Number:</label> <input type="tel" id="phone" name="phone"
					class="form-input" required><br> <label for="type">Type:</label>
				<select id="type" name="type" class="type" required>
					<option value="productmanager">Product Manager</option>
					<option value="supplymanager">Supply Manager</option>
					<option value="salesmanager">Sales Manager</option>
				</select><br> <br> <input type="submit" value="Add User"
					class="button">
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>