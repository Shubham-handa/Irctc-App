<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body{
background-color: #333652;
background-size: cover;
background-blend-mode: overlay;
}

a{
color:white;
}

table.center{
color:#FAD02C;
margin-left: 600px;
font-size: 20px;
}

h3{
text-align: center;
font-size: 30px;
color:aqua;
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
	<h3 id="ticket">Congratulations, your ticket got booked!!</h3>
	<table border="1" class="center">
	<tr style="background-color: gray;">
	<td><label>PNR Number:</label>
	<td>${pnrNumber}</td>
	</tr>
	<tr>
	<td><label>Train Number:</label>
	<td>${trainNumber}</td>
	</tr>
	<tr>
	<td><label>Train Name:</label>
	<td>${trainName}</td>
	</tr>
	<tr>
	<td><label>Date Of Travel:</label>
	<td>${dateOfTravel}</td>
	</tr>
	<tr>
	<td><label>Departure:</label>
	<td>${departure}</td>
	</tr>
	<tr>
	<td><label>Duration:</label>
	<td>${duration}</td>
	</tr>
	<tr>
	<td><label>Arrival:</label>
	<td>${arrival}</td>
	</tr>
	<tr>
	<td><label>Total Fare Amount:</label>
	<td>${totalFareAmount}</td>
	</tr>
	</table>
	<br/>
	<div class="content">
	<a href="showTicketBookingForm" id="bookTicket">Book Another Ticket</a>
	</div>
	
</body>
</html>