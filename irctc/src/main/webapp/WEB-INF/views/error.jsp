<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
      <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>error page</title>
<style>

body{
background-color: #333652;
background-size: cover;
background-blend-mode: overlay;
color:aqua;
}


h3{
text-align: center;
font-size: 50px;
}

a{
color:white;
}


.content{
text-align:center;
font-size: 20px;
}

</style>
</head>
<body>
		<br>
		<br>
		
		<!--Add code here  -->
		<sf:form id="error">
		<h3>Unable to book ticket. Below are the error details:</h3>
		<h3>Response Code : ${responseCode}</h3>
		<h3>Error Message : ${errorMessage}</h3>
		</sf:form>
		<br/>
		<div class="content">
		<a href="showTicketBookingForm" id="bookTicket">Book Ticket</a>
		</div>

</body>
</html>