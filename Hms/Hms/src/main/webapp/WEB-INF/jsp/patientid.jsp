<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<body style="background-color:#6B69B5; background-image: url(Images/s.jpg);position: relative;
	background-position: center;	background-size: contain;	background-repeat: no repeat;	background-attachment: fixed;">

<div style="text-align:center; background-color:#EFF5F5; width:600px; margin:0 auto; border-radius:30px; border:1px solid blacktransform: translate(0%,70%);margin-top: 250px;padding: 30px;">
    <h1 ><b>Patient_Id:"${patient.id}"</b></h1>
    <h1 ><b>Please remember the above Patient_Id for future logins.</b></h1>
    <h1 ><b>Click on the below Login button to login to your account.</b></h1>
    <a href="/login" type="button"><big><b>Login<b></big></a>
</div>
</body>
</html>