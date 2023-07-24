<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Doctor's Login</title>
	<link rel="stylesheet" href="index.css" />
	<link rel="stylesheet" href="DoctorsLogin1.css" />
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
				<li><a href="/contact">Contact Us</a></li>
			</ul>
		</nav>
	</header>
	<section class="pimg1">
	<div class="center">
		<br>
		<h1>Doctor's LogIn</h1>
		<form  class="tex" action="validate">
			<div class="txt_filed">
				<br>
				<label>Doctor_ID</label>
				<input type="text" required name="doctor_id">

			</div>
			<br>
			<div class="txt_filed">
				<label>Password </label>
				<input type="password" required name="password">

			</div>
			<br>
			<div class="pass">Forgot Password?</div>

			<input type="submit">
			<br>
			<br>
		</form>
	</div>
</section>
</body>

</html>