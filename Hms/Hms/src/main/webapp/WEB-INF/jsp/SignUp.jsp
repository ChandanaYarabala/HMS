<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Home Page</title>
  <link rel="stylesheet" href="SignUp.css"/>
</head>

<body lang="en-us">
<header>
  <nav>
    <div class="container">
      <a class="navbar-brand" href="index.html">
        <img src="Images/images.png" alt="img" height="100px" style="float: left; border-radius: 30%">
      </a>
    </div>
    <h1 class="Logo">Hospital Management System</h1>
    <ul class="menu">
      <li><a href="Login.html">Login</a></li>
      <li><a href="DoctorsLogin.html">Doctors Login</a></li>
      <li><a href="AboutUs.html">About Us</a></li>
      <li><a href="ContactUs.html">Contact Us</a></li>
    </ul>
  </nav>
</header>

<section class="pimg1">
	<div class="row justify-content-center">
		<div class="col-4">
			<div class="k" class="center">
				<div id="form">
					<h1 style="text-align:center">Sign Up</h1><br>
					<hr>
					<br>
					<form action="signup" method="POST" >
						<!--<label for="PatientID">Patient ID</label>
							<input type="text" id="PatentID" name="id"><br><br>-->


						<label for="title">Title</label>
						<select name="title">
							<option value=Select>Choose an option</option>
							<option value=Mr.>Mr.</option>
							<option value=Mrs.>Mrs.</option>
							<option value=Miss.>Miss.</option>
						</select><br><br>


						<label for="FullName">Full Name<span class="tab" ></span></label>
						<input type="text" id="Name" name="name"></input><br><br>


						<label for="Gender">Gender</label>
						<select name="gender">
							<option value=Select>Choose an option</option>
							<option value=Mr.>Female</option>
							<option value=Mrs.>Male</option>
							<option value=Miss.>Do not disclose</option>
						</select><br><br>

						<label for="DOB">Date of Birth </label>
						<input type="date" name="dob" id='DOB' onchange="ageCount()">

						<p id="demo">Your Age is: </p><br>

						<label for="Age">Age</label>

                        <input type="text" id="Age" name="age"><br><br>




						<label for="BloodGroup">Blood Group</label>
						<select id="BloodGroup" name="bloodgrp">
							<option value="select">--Choose an option--</option>
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
						</select><br><br>


						<label for="MobileNumber">Mobile Number &#128241;</label>
						<input type="text" pattern="[789][0-9]{9}" name="mobilenum" id="MobileNumber"><br><br>


						<label for="email">Email Id &#9993;</label>
						<input type="email" id="email" name="emailid"></input>

						<br><br>
						<label for="password">Create a new password</label>
						<input type="Password" name="password" id="password" onkeyup='check()' required></input><br><br>



						<p id="message"></p>
						<label for="register" style="text-align: center"></label>
						<input type="submit" id="register" name="register">
						<input type="reset" id="reset"><br>

						<!-- 		<script type="text/javascript">
								var check = function() {
									if (document.getElementById('password').value == document.getElementById('confirmpassword').value) {
										document.getElementById('message').style.color = 'green';
										document.getElementById('message').innerHTML = 'password matching';
										}
									else {
										document.getElementById('message').style.color = 'red';
										document.getElementById('message').innerHTML = 'password not matching';
										}
									} 
							</script>  -->


					</form>
					</div>
	</div>
		</div>
	</div>
	<script type="text/javascript">
		var check = function () {
			if (document.getElementById('password').value == document.getElementById('confirmpassword').value) {
				document.getElementById('message').style.color = 'green';
				document.getElementById('message').innerHTML = 'password matching';
			}
			else {
				document.getElementById('message').style.color = 'red';
				document.getElementById('message').innerHTML = 'password not matching';
			}
		} 

		function ageCount() {
		  var now =new Date();
		  var currentY= now.getFullYear();
		  var currentM= now.getMonth();

		  var dobget =document.getElementById("DOB").value;
		  var dob= new Date(dobget);
		  var prevY= dob.getFullYear();
		  var prevM= dob.getMonth();

		  var ageY =currentY - prevY;
		  var ageM =Math.abs(currentM- prevM);

		  document.getElementById('demo').innerHTML = 'Your Age is: '+ageY +' years ' + ageM +' months';
		  }
	</script>
	<br>
	</section>

</body>

</html>