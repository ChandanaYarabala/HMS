<!DOCTYPE html>
<html>
<head>
<meta name="viewport" >
	<title>Reset Password</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<style type="text/css">

	input {
	  width: 50%;
	  padding: 12px;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  box-sizing: border-box;
	  margin-top: 6px;
	  margin-bottom: 16px;

	}

	input[type=submit] {
	margin-left:200px;
	  background-color: #04AA6D;
	  color: white;
	}

	.container {
	  background-color: #f1f1f1;
	  padding: 20px;
	}


	#message {
	  display:none;
	  background: #f1f1f1;
	  color: #000;
	  position: relative;
	  padding: 20px;
	  margin-top: 10px;
	}

	#message p {
	  padding: 10px 35px;
	  font-size: 18px;
	}

	.valid {
	  color: green;
	}

	.valid:before {
	  position: relative;
	  left: -35px;
	  content: "✔";
	}

	.invalid {
	  color: red;
	}

	.invalid:before {
	  position: relative;
	  left: -35px;
	  content: "✖";
	}
	</style>

</head>
<body>
<div class="row justify-content-center">
<div class="col-4">
<br><br>
<h3 style="text-align:center">Reset your password</h3>
<br><br>

	<div class="container">
	  <form >

		<label for="psw"> Set a Password  </label>
	    <input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  onkeyup='check()' required>
	    <br>
	    <label for="confirmpassword">Confirm password</label>
		<input type="Password" name="confirmpassword" id="confirmpassword"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" onkeyup='check()' required><br>

	    <input type="submit" value="Submit">
	  </form>
	</div>

	<div id="message">
	  <h3>Password must contain the following:</h3>
	  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
	  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
	  <p id="number" class="invalid">A <b>number</b></p>
	  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
	</div>




	<script type="text/javascript">
		var myInput = document.getElementById("psw");
		var myInput1= document.getElementById("confirmpassword");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");

		var check = function() {
			if (document.getElementById('psw').value == document.getElementById('confirmpassword').value) {
				document.getElementById('message').style.color = 'green';
				document.getElementById('message').innerHTML = 'password matching';
				}
			else {
				document.getElementById('message').style.color = 'red';
				document.getElementById('message').innerHTML = 'password not matching';
				}
			} 

		myInput.onfocus = function() {
		  document.getElementById("message").style.display = "block";
		}
		myInput1.onfocus = function() {
			  document.getElementById("message").style.display = "block";
			}

		myInput.onblur = function() {
		  document.getElementById("message").style.display = "none";
		}
		myInput1.onblur = function() {
			  document.getElementById("message").style.display = "none";
			}

		myInput.onkeyup = function() {
		  var lowerCaseLetters = /[a-z]/g;
		  if(myInput.value.match(lowerCaseLetters)) {
		    letter.classList.remove("invalid");
		    letter.classList.add("valid");
		  } else {
		    letter.classList.remove("valid");
		    letter.classList.add("invalid");
		  }

		  var upperCaseLetters = /[A-Z]/g;
		  if(myInput.value.match(upperCaseLetters)) {
		    capital.classList.remove("invalid");
		    capital.classList.add("valid");
		  } else {
		    capital.classList.remove("valid");
		    capital.classList.add("invalid");
		  }

		  var numbers = /[0-9]/g;
		  if(myInput.value.match(numbers)) {
		    number.classList.remove("invalid");
		    number.classList.add("valid");
		  } else {
		    number.classList.remove("valid");
		    number.classList.add("invalid");
		  }

		  if(myInput.value.length >= 8) {
		    length.classList.remove("invalid");
		    length.classList.add("valid");
		  } else {
		    length.classList.remove("valid");
		    length.classList.add("invalid");
		  }
}
</script>

</body>
</html>