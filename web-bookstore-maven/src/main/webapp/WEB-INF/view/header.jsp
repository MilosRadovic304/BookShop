<!DOCTYPE html>

<html>

	<head>	
	<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css">
	
	</head>
	
	<body>
	
			<div id="header">
			<ul>
				<li id= "book"><img src="${pageContext.request.contextPath}/resources/images/book.png" alt="book logo" height="42"></li>
				<li id= "naslov"><strong>THE BOOKSTORE</strong></li>
				<li><a href="${pageContext.request.contextPath}/web/index">Home</a></li>
				<li class="dropdown">
					<a id="menu" class="dropbtn">About Us</a>
					<div class="dropdown-content">
					<a href="${pageContext.request.contextPath}/web/ourfounder">Our Founder</a>
					<a href="${pageContext.request.contextPath}/web/team">Team</a>
					<a href="${pageContext.request.contextPath}/web/contact">Contact</a>
					</div>
				</li>
				
				<li class="dropdown">
					<a id="menu" class="dropbtn">Book categiries</a>
					<div class="dropdown-content">
					<a href="${pageContext.request.contextPath}/book/list" >Computer Books</a>
					<a id ="X" href="#">Comedy</a>
					<a id ="X" href="#">Horror</a>
					<a id ="X" href="#">Books for Children</a>
					<a id ="X" href="#">Science</a>
					<a id ="X" href="#">History</a>					
					<a id ="X" href="#">Art</a>
					</div>
				</li>
				<li><a href="${pageContext.request.contextPath}/web/register">Register</a></li>
				<li><a href="${pageContext.request.contextPath}/customer/list">Customers</a></li>
			</ul>
		</div>
	
	</body>
	
</html>