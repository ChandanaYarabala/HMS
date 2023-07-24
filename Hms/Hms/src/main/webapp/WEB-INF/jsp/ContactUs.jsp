<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Contact Us</title>
  <link rel="stylesheet" href="ContactUs.css" />

</head>

<body>
<header>
  <nav>
    <div class="container1">
      <a class="navbar-brand" href="index.html">
        <img src="Images/images.png" alt="img" height="100px" style="float: left; border-radius: 30%">
      </a>
    </div>
    <h1 class="logo">Hospital Management System</h1>
    <ul class="menu">
      <li><a href="index.html">Home</a></li>
      <li><a href="/login">Login</a></li>
      <li><a href="AboutUs.html">About Us</a></li>
    </ul>
  </nav>
</header>
<section class="pimg1">
  <div class="container">
    <div class="apply_box">
      <h1 style="text-align: center">Enquiry form</h1><br>
      <hr>
      <form method="POST" action="contact">
        <div class="form_container">
          <div class="form_control"><br>
            <label for="name">Name</label>
            <input id="name" name="name" placeholder="Enter Name..." required/>
          </div>
          <div class="form_control"><br>
            <label for="emailid">Email Id</label>
            <input type="email" id="emailid" name="emailid" placeholder="Enter Email Id..." required/>
          </div>
          <div class="form_control"><br>
            <label for="contactnum">Contact No</label>
            <input id="contactnum" name="contactnum" placeholder="Enter Contact Number..." required />
          </div>
          <div class="form_control"><br>
            <label for="location">Location</label>
            <select id=location name="loc" required>
              <option value="">Select a location...</option>
              <option value="Gandhi Hospital, Hyderabad">Gandhi Hospital, Hyderabad</option>
              <option value="Osmania Hospital, Hyderabad">Osmania Hospital, Hyderabad</option>
              <option value="Niloufer Hospital, Hyderabad">Niloufer Hospital, Hyderabad</option>
              <option value="Government Hospital, Khammam">Government Hospital, Khammam</option>
              <option value="Government Hospital Center, Khammam">Government Hospital Center, Khammam</option>
              <option value="Government Hospital, Siddipet">Government Hospital, Siddipet</option>
              <option value="Government Hospital, Siddipet">Government Hospital, Siddipet</option>
              <option value="Government Hospital, Dubbak">Government Hospital, Dubbak</option>
              <option value="Government Hospital, Gajwel">Government Hospital, Gajwel</option>
              <option value="Government Hospital, Medak">Government Hospital, Medak</option>
              <option value="Government Hospital, Narsapur">Government Hospital, Narsapur</option>
            </select>
          </div>
          <div class="form_control"><br>
            <label>Speciality</label>
            <select id=location name="spe" required>
              <option value="">Select a Speciality...</option>
              <option value="Cardiology">Cardiology</option>
              <option value="Dermatology">Dermatology</option>
              <option value="Neurology">Neurology</option>
              <option value="Pediatrics">Pediatrics</option>
              <option value="Orthopedic">Orthopedic</option>
              <option value="ENT">ENT</option>
              <option value="Opthlamology">Opthlamology</option>
              <option value="Gynecology">Gynecology</option>
            </select>
          </div><br>
          <div class="textarea_control"><br>
            <label for="query">Query</label>
            <textarea id="query" name="query" rows="4" cols="50" placeholder="Enter your query..." required ></textarea>
          </div>
        </div>
        <div class="buttonContainer">
          <input type = "submit">
        </div>
      </form>
    </div>
  </div>
</section>
</body>

</html>