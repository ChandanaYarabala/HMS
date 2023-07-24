<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
    <link rel="stylesheet" href="index.css"/>
    <style>
            table, th, td {
              border: 1px solid black;
              border-collapse: collapse;
              align:center;
          }
         table.center {
          margin-left: auto;
          margin-right: auto;
          }
      </style>
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
            <li><a href="/login">Login</a></li>
            <li><a href="/DoctorsLogin">Doctors Login</a></li>
            <li><a href="/chandu">PatientList</a></li>
            <li><a href="AboutUs.html">About Us</a></li>
            <li><a href="ContactUs.html">Contact Us</a></li>
        </ul>
    </nav>
</header>

<h1 style="text-align:center">ViewSlot</h1>
<form >
    <table class="center">
        <tr>
            <th>PatientID</th>
            <th>HospitalName</th>
            <th>Speciality</th>
            <th>Doctor</th>
            <th>Time</th>
        </tr>

        <tr>
            <td>${user.id}</td>
            <td>${dp.Hospital}</td>
            <td>${dp.Speciality}</td>
            <td>${dp.Doctor}</td>
            <td>${dp.appdate}</td>
        </tr>

    </table>
</form>

</body>

</html>