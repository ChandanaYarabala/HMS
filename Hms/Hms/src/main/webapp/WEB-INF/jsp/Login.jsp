<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" href="Login.css"/>
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
	<section class="pimg1">
	<div class="center">
		<br>
		<h1>LogIn</h1>
		<form class="tex" action="login1">
			<div class="txt_filed">
				<br>
				<label>Patient_ID</label>
				<input type="text" required name="id">

			</div>
			<br>
			<div class="txt_filed">
				<label>Password </label>
				<input type="password" required name="password">

			</div>
			<br>
			<div class="pass"><a href="ForgotPassword.html">Forgot Password?</a></div>

			<input type="submit" name="Login">
			<br>
			<br>
			<div class="Sign_UpLink">
				Not a member?<a href="/signup">SignUp</a><br><br>
			</div>
		</form>
	</div>
</section>
</body>

</html>