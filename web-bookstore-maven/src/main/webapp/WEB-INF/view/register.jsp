 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>Register</title>
	<link href="${pageContext.request.contextPath}/resources/css/registration.css" rel="stylesheet" type="text/css">
	<%@ include file="header.jsp" %>
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	
	
	<script>
		$(document).ready(function(){
			$("input").focus(function () {
				$(this).css("background-color", "#FF6347");
			});
			$("input").blur(function () {
				$(this).css("background-color", "#FFF");
			});
		});
	</script> 
	
    
</head>

<body>
<div id="container">
	
	<h2>Registration:</h2><br/>
	

	<div id="f">
		 <form action="../customer/saveCustomer" name="customer" method="POST">
		
		
			<label>First Name</label>
			<input type="text" id="fname" name="firstName" placeholder="Your name..">
			<br/>
			
			<label>Last Name</label>
			<input type="text" id="lname" name="lastName" placeholder="Your last name..">
			<br/>
			
			<label>Email</label>
			<input type="text" id="email" name="email" placeholder="Your email..">
			<br/>
			
		  
			<input type="submit" value="Save">
			<input type="reset" value="Reset">
		</form> 
		
		
		
		
				<!--<form:form action="saveCustomer" modelAttribute="customer" method="POST">
				
			
				<form:hidden path="id" />
					<table>
						<tbody>
							<tr>
								<td><label>First name:</label></td>
								<td><form:input path="firstName"/></td>
							</tr>
							
							<tr>
								<td><label>Last name:</label></td>
								<td><form:input path="lastName"/></td>
							</tr>
							
							<tr>
								<td><label>Email:</label></td>
								<td><form:input path="email"/></td>
							</tr>
							
							<tr>
								<td><label></label></td>
								<td><input type="submit" value="Save" class="save" /></td>
							</tr>
						
						</tbody>					
					</table>
				
				</form:form> -->
		
	  
	</div>
</div>	

<div class="footer">
	<p>THE BOOKSTORE, Kneza Mihajla 33/2, 11000 Belgrade </p>
</div>

</body>
</html>