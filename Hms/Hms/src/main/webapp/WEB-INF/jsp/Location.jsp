<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Location</title>
	<link rel="stylesheet" href="location.css" />
	<!--  <style  type="text/css">
	form {
		text-align:center;
		justify-content: c
	}

	body{
		background-color:#6B69B5;
	}
	#form{
		height:500px;
		background-color:#EFF5F5;
		text-align:center;
	}

	.k {

	box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px,
	rgba(0, 0, 0, 0.12) 0px -12px 30px,
 	rgba(0, 0, 0, 0.12) 0px 4px 6px,
	rgba(0, 0, 0, 0.17) 0px 12px 13px,
	rgba(0, 0, 0, 0.09) 0px -3px 5px;
	width:400px;
	height:500px;
	 }
</style>	-->
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
	<div class="row justify-content-center">
		<div class="col-4">
			<div class="k">
				<div id=form>
					<h1 style="text-align:center; font-style: italic;">Location</h1>
					<br>
					<hr>
					<br>
	<form style="text-align:center"  action="dep" >

						<select id="District" onchange="populateArea()" name="District">
	    <option value="">Select District</option>
	    <option value="Hyderabad">Hyderabad</option>
	    <option value="Khammam">Khammam</option>
	  </select>
	  <br><br>

	  <select id="Areas" onchange="populatePin()" name="area">
	    <option value="">Select Areas</option>
	  </select>
	  <br><br>

	  <select id="Pincode" name="Pincode">
	    <option value="">Select Pincode</option>
	  </select>
	  <br><br>

	  <input type="submit" name="submit" >

	</form>
	</div>
	<script>

    // Define the data for the dropdowns
    var data = {
      Hyderabad: {
        secunderabad: ["500003", "500007"],
        afzalgunj: ["500012", "500002"]
      },
      Khammam: {
        wyra: ["507165", "507168"],
        khammam: ["507001", "507158"]
      }
    };

    // Function to populate the speciality dropdown
    function populateArea() {
      var District = document.getElementById("District").value;
      var spDropdown = document.getElementById("Areas");
      spDropdown.innerHTML = "<option value=''>Select Areas</option>";

      if (District !== "") {
        var sp = data[District];
        for (var Areas in sp) {
          var option = document.createElement("option");
          option.value = Areas;
          option.text = Areas.charAt(0).toUpperCase() + Areas.slice(1);
          spDropdown.appendChild(option);
        }
      }
    }


    // Function to populate the Doctors dropdown
    function populatePin() {
      var District = document.getElementById("District").value;
      var Areas = document.getElementById("Areas").value;
      var DDropdown = document.getElementById("Pincode");
      DDropdown.innerHTML = "<option value=''>Select Pincode</option>";

      if (District !== "" && Areas !== "") {
        var Docs = data[District][Areas];
        for (var i = 0; i < Docs.length; i++) {
          var option = document.createElement("option");
          option.value = Docs[i];
          option.text = Docs[i];
          DDropdown.appendChild(option);
        }
      }
    }
	</script>

					</form>
				</div>
			</div>
			</div>
			</div>
			</section>
</body>

</html>