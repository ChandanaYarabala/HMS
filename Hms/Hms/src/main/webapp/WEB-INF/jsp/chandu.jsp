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

        <h1 style="text-align:center">PatientList</h1>
        <form >
             <table class="center">
                   <tr>
                       <th>ID</th>
                       <th>Title</th>
                       <th>Name</th>
                       <th>Gender</th>
                       <th>Age</th>
                       <th>DOB</th>
                       <th>BloodGrp</th>
                       <th>Mobilenum</th>
                       <th>EmailId</th>
                       <th>Password</th>
                   </tr>
                    <c:forEach  var="i" items="${data}">
                       <tr>
                            <td>${i.id}</td>
                           <td>${i.title}</td>
                           <td>${i.name}</td>
                           <td>${i.gender}</td>
                           <td>${i.age}</td>
                           <td>${i.dob}</td>
                           <td>${i.bloodgrp}</td>
                           <td>${i.mobilenum}</td>
                           <td>${i.emailid}</td>
                           <td>${i.password}</td>
                        </tr>
                   </c:forEach>
               </table>
        </form>

</body>

</html>