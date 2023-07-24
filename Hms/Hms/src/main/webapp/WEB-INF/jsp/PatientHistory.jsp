 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PatientHistory</title>
	<link rel="stylesheet" href="PatientHistory.css"/>

</head>
<body>
	<header>
		<nav>
			<div class="container">
				<a class="navbar-brand" href="index.html">
					<img src="Images/images.png" alt="img" height="100px" style="float: left; border-radius: 30%">  
				</a>
			</div>
			<h1 class="Logo">Hospital Management System</h1>
			<ul class="menu">
				<li><a href="index.html">Home</a></li>
				<li><a href="AboutUs.html">About Us</a></li>
				<li><a href="ContactUs.html">Contact Us</a></li>
			</ul>
		</nav>
	</header>

<h1 style="text-align:center">Patient's History</h1>
<div class="row justify-content-center">
<div class="col-4">
<form >
	<table style="width:100%">
		<tr>
			 <th>ID</th>
             <th></th>
		</tr>

		<tr>
      		<td>${details.name}</td>
            <td onclick="location.href='/patientrecords1'">go to yourpage</td>
		</tr>

	</table>
</form>
</div>
</div>


</body>
</html>