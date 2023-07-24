<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department</title>
<link rel="stylesheet" href="Department.css"/>

<style>

	* {
		box-sizing: border-box;
	}


</style>
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
<div class="Container"><br>
<h2>Book an Appointment</h2><br><hr><br>
	<form action="app">

   <select id="Hospital" onchange="populateSpecialists()" name="Hospital">
	    <option value="">Select Hospital</option>
	    <option value="GHK">
	    <%
		String n1 = request.getParameter("Pincode");
        if(n1.equals("507165")|| n1.equals("507168")|| n1.equals("507001")|| n1.equals("507158")) {
				out.print("Government Hospital");
		}
	else{
		out.print("Chandana Hospital");
		}


		%></option>
	    <!-- <option value="GHN">GHN</option>
	    <option value="GHS">GHS</option>
	    <option value="GHM">GHM</option> -->
	  </select>
	  <br><br>

	  <select id="Speciality" onchange="populateDoctors()" name="Speciality">
	    <option value="">Select Speciality</option>
	  </select>
	  <br><br>

	  <select id="Doctor" name="Doctor">
	    <option value="">Select Doctor</option>
	  </select>
	  <br><br>

	  <label>Appointment Date</label>
	  <input type="date" id="Appointment Date" name="appdate">
	  <br><br>

	  <input type="submit" name="submit">
		<br><br>
	</form>
	</div>
	<script>

    // Define the data for the dropdowns
    var data = {
      GHK: {
        cardiology: ["Navya", "Anusha", "Harsha"],
        ent: ["Vishnu", "Nishanth", "Anuha"],
        pediatrics: ["Naveen", "Bhargavi", "Ram"]
      },
      GHN: {
        gynecology: ["Thabhitha", "Oliva", "Hemanth"],
        orthopedic: ["Mounika", "Ram", "Dinesh"],
        dermatology: ["Vidya", "Krishna", "Ravi"]
      },
      GHS: {
        opthalmology: ["Mahesh", "Rakesh", "Divya"],
        neurology: ["Sridhar", "Suraj", "Uday"],
        cardiology: ["Karthik", "Ramesh", "Nishitha"]
      },
      GHM: {
    	genMedicine: ["Pavan","Satheesh","Venkat"],
    	gynecology: ["Prasad","Srinivas","Surya"],
    	pediatrics: ["Pavani","Chary","Chaitanya"]
      }
    };

    // Function to populate the speciality dropdown
    function populateSpecialists() {
      var Hospital = document.getElementById("Hospital").value;
      var spDropdown = document.getElementById("Speciality");
      spDropdown.innerHTML = "<option value=''>Select Speciality</option>";

      if (Hospital !== "") {
        var sp = data[Hospital];
        for (var Speciality in sp) {
          var option = document.createElement("option");
          option.value = Speciality;
          option.text = Speciality.charAt(0).toUpperCase() + Speciality.slice(1);
          spDropdown.appendChild(option);
        }
      }
    }


    // Function to populate the Doctors dropdown
    function populateDoctors() {
      var Hospital = document.getElementById("Hospital").value;
      var Speciality = document.getElementById("Speciality").value;
      var DDropdown = document.getElementById("Doctor");
      DDropdown.innerHTML = "<option value=''>Select Doctor</option>";

      if (Hospital !== "" && Speciality !== "") {
        var Docs = data[Hospital][Speciality];
        for (var i = 0; i < Docs.length; i++) {
          var option = document.createElement("option");
          option.value = Docs[i];
          option.text = Docs[i];
          DDropdown.appendChild(option);
        }
      }
    }
	</script>
	</section>
</body>
</html>