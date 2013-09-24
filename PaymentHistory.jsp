<%@ page import="csc309.jsp.Reservation" %>
<%@ page import="csc309.jsp.Flight" %>
<%@ page import="csc309.jsp.PaymentSummary" %>



<html>
	<head>
		<title>Transaction History</title>
		<link rel="stylesheet" type="text/css" href="reservation.css" />
		<script type="text/javascript" src="checkout.js"></script>
	</head>
	<body>
		<h2>Transaction History</h2>
		<form action="Reserve.jsp">	
			<input type="submit" value='Go To Main' />
		</form>
		<hr>
		
			<%
				Reservation flightdata = (Reservation)application.getAttribute("flightdata");
				for (int i=0; i < flightdata.paymentSummarys.size(); i++){
			%>
			<table>
			<tr><td>Passenger Name : </td><td><%= flightdata.paymentSummarys.get(i).cardHolderName %></td></tr>
			<tr><td>Departure Date : </td><td><%= flightdata.flights.get(i).date %></td></tr>
			<tr><td>Departure Time : </td><td><%= flightdata.flights.get(i).time %></td></tr>
			<tr><td>Seat number : </td><td><%= flightdata.flights.get(i).seat %></td></tr>
			<tr><td>Credit card number : </td><td><%= flightdata.paymentSummarys.get(i).cardNumber %></td></tr>
			<tr><td>Credit expire date : </td><td><%= flightdata.paymentSummarys.get(i).expireMonth %>/<%= flightdata.paymentSummarys.get(i).expireYear %></td></tr>
			<tr><td>total cost : </td><td>$100</td></tr>
			</table>
			<hr>


			<%
				}
			%>
		<form action="Reserve.jsp">	
			<input type="submit" value='Go To Main' />
		</form>
	</body>
</html>