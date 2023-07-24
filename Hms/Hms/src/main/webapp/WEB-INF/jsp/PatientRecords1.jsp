<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
	    background-image:url("https://www.totalvoicetech.com/wp-content/uploads/medical-records.jpg");
	    background-size:cover;
	    background-position: center;	
	    background-repeat: no repeat; 	
	    text-align:center;	
	    }
	    table, th, td {	
	      border: 1px solid black;	
	      border-collapse: collapse;	
	      background:#979de6;
	     }
</style>
</head>
<body>
        <h1 style="text-align:center">Patient Records</h1>
        <form>
               <label><b>Patient ID:</b></label>
               <input type="text" name="PatientID" value="${user.id}"/>
               <p>&ensp;</p>
               <label><b>Patient Name:</b></label>
               <input type="text" name="name" value="${details.name}"/>
               <label><b>Gender:</b></label>
               <input type="text" name="gender" value="${details.gender}"/>
               <label><b>Date of Birth:</b></label></td>
               <input type="text" name="dob" value="${details.dob}"/>
               <h2>History</h2>

                <table style="width:100%">
                           <tr>
                           <th><b>Date</b></th>
                           <th><b>Disease</b></th>
                           <th><b>Doctor Name</b></th>
                           <th></th>
                           </tr>
        </form>
</body>
</html> 