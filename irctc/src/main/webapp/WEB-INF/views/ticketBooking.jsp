<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1{
color: white;
text-align:center;
font-size: 50px;
font-style: oblique;
}

body{
background-color: #333652;
background-size: cover;
background-blend-mode: overlay;
}

select{
background-color: #DADED4;
}

input{
background-color: #E9EAEC;
border: 2px solid #E9EAEC;
color:black;
}

h3{
color:white;
margin-bottom: 10px;
text-align:center;
font-size: 30px;
}

table.center{
color:#FAD02C;
margin-left: 580px;
font-size: 20px;
}

tr, td{
width: 150px;
border: 3px;
padding: 10px;
}

label{
font-weight: bold;
}

#submit{
background-color: #24a0ed;
border:thin;
border-radius:18px;
color: white;
padding: 8px 32px;
text-align: center;
text-decoration: none;
display: inline-block;
font-size: 16px;
margin: 4px 2px;
cursor: pointer;
}

#reset{
background-color: #FF0000;
border:thin;
border-radius:18px;
color: white;
padding: 8px 32px;
text-align: center;
text-decoration: none;
display: inline-block;
font-size: 16px;
margin: 4px 2px;
cursor: pointer;
}



</style>
<head>
<body>
	<br>
	<br>
	<!-- Add code here.. -->
	<h1 id="heading">Indian Railway System</h1>
	<sf:form name="form" method="post" action="getTicketBookingResultPage" modelAttribute="ticketBooking">
	<table class="center">
	<h3>Book Your Tatkal Ticket</h3>
	<tr>
	<td><sf:label path="customerName">Customer Name:</sf:label></td>
	<td><sf:input path="customerName" id="customerName" /></td>
	<td><sf:errors path="customerName" cssStyle="color:red;" /></td>
	</tr>
	<tr>
	<td><sf:label path="mobileNumber">Mobile Number:</sf:label></td>
	<td><sf:input path="mobileNumber" id="mobileNumber"/></td>
	<td><sf:errors path="mobileNumber" cssStyle="color:red;"/></td>
	</tr>
	<tr>
	<td><sf:label path="fromCity">From:</sf:label></td>
	<td><sf:select path="fromCity" items="${from}" id="fromCity"></sf:select></td>
	</tr>
	<tr>
	<td><sf:label path="toCity">To:</sf:label></td>
	<td><sf:select path="toCity" items="${to}" id="toCity"></sf:select></td>
	</tr>
	<tr>
	<td><sf:label path="travelClass">Class:</sf:label></td>
	<td><sf:select path="travelClass" items="${classTypes}" id="travelClass"></sf:select></td>
	</tr>
	<tr>
	<td><sf:label path="noOfTickets">No. Of Tickets:</sf:label></td>
	<td><sf:input path="noOfTickets" id="noOfTickets"/></td>
	<td><sf:errors path="noOfTickets" cssStyle="color:red;"/></td>
	</tr>
	<tr>
	<td><input type="submit" id="submit" name="submit" value="Book"></td>
	<td><input type="reset" value="Clear" id="reset"></td>
	</tr>
	</table>
	</sf:form>
	 
 
</body>
</html>