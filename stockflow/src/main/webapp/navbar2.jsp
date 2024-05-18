<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css" href="navbar.css" />
<link rel="stylesheet" type="text/css" href="footer.css" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@600&display=swap"
	rel="stylesheet">

</head>
<body>
	<div class="top-row">
		<nav class="nav">
			<div class="box1">

				<p>StockFlow</p>
			</div>
			<div class="box2">
				<form action="UserProfile" method="post">
					<button type="submit" class="update-button">Profile</button>
				</form>

			</div>
		</nav>

		<nav class="nav_s">
			<ul class="main-nav">
				<li><a href="home.jsp">Home</a></li>
				<li><a href="notice.jsp">Notice</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="admin_dashboard.jsp">Dashboard</a>

			</ul>
		</nav>
	</div>





</body>
</html>
