<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="homeStyle.css">
<style type="text/css">
body {
	font-family: Hind SemiBold;
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
	color: black;
}

.button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	border: 2px solid #0056b3;
	border-radius: 5px;
	margin-right: 10px;
	cursor: pointer;
	width: 150px;
	text-align: center;
	display: inline;
}

.button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<jsp:include page="navbar2.jsp" />
	<br>
	<br>
	<table>
		<c:forEach var="u" items="${userDetails}">

			<c:set var="id" value="${u.userID}" />
			<c:set var="name" value="${u.name}" />
			<c:set var="email" value="${u.email}" />
			<c:set var="username" value="${u.userName}" />
			<c:set var="password" value="${u.password}" />
			<c:set var="phone" value="${u.phone}" />
			<c:set var="type" value="${u.type}" />

			<tr>
				<td>User ID</td>
				<td>${u.userID}</td>
			</tr>
			<tr>
				<td>Name</td>
				<td>${u.name}</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${u.email}</td>
			</tr>
			<tr>
				<td>UserName</td>
				<td>${u.userName}</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>${u.password}</td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td>${u.phone}</td>
			</tr>
			<tr>
				<td>Type</td>
				<td>${u.type}</td>
			</tr>

		</c:forEach>
	</table>

	<c:url value="UpdateUser.jsp" var="userupdate">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="type" value="${type}" />
	</c:url>
	<br>
	<a href="${userupdate}" class="button">Update User</a>

	<c:url value="deleteuser.jsp" var="userdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="type" value="${type}" />
	</c:url>
	<br>
	<a href="${userdelete}" class="button">Delete User</a>
	<br>
	<div class="div">
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
