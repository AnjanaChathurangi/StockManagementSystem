<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Users</title>
<style type="text/css">
.centered {
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 20px;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #007bff;
	color: white;
}

.button-container {
	margin: 10px 0;
	text-align: center;
}

.button-container form {
	display: inline;
}

.button-container button {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 5px;
	font-size: 16px;
	margin-right: 10px;
}

.button-container button:hover {
	background-color: #0056b3;
}
</style>

</head>
<body>
	<jsp:include page="navbar2.jsp" />
	<br>
	<br>
	<div class="button-container">
		<form action="userInsert.jsp" method="post">
			<button type="submit" class="add-button">Add Users</button>
		</form>
		<form action="selectUser.jsp" method="post">
			<button type="submit" class="update-button">Update/Delete Users</button>
		</form>
		
	</div>
	<h2>User Details</h2>
	<br>
	<br>
	<div class="centered">
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>UserName</th>
				<th>Password</th>
				<th>PhoneNumber</th>
				<th>Type</th>
			</tr>

			<c:forEach items="${userdetails}" var="user">
				<c:set var="id" value="${user.userID}" />
				<c:set var="name" value="${user.name}" />
				<c:set var="email" value="${user.email}" />
				<c:set var="username" value="${user.userName}" />
				<c:set var="password" value="${user.password}" />
				<c:set var="phone" value="${user.phone}" />
				<c:set var="type" value="${user.type}" />
				<tr>
					<td>${user.userID}</td>
					<td>${user.name}</td>
					<td>${user.email}</td>
					<td>${user.userName}</td>
					<td>${user.password}</td>
					<td>${user.phone}</td>
					<td>${user.type}</td>

				</tr>
			</c:forEach>
		</table>

	</div>
	<br>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>
