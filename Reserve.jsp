<%@ page import="csc309.jsp.Reservation" %>
<%@ page import="csc309.jsp.Flight" %>

<html>
	<head>
		<title>Reservation</title>
		<link rel="stylesheet" type="text/css" href="reservation.css" />
		<script type="text/javascript" src="checkout.js"></script>
	</head>
	<body onload="populatedropdown()" class="reserve">
	
	<form action="SeatSelection.jsp" method="post">
		<h1>Flight Selection</h1>
		<hr>
		<table align="center">
			<tr>
				<td><a>Departure Date: </a></td>
				<td><select id='date' name='date'></select></td>
			</tr>
			<tr>
				<td><a>Departure Time: </a>
				<td><select id='time' name='time'>
					<option value="10am">10am</option>
					<option value="8pm">8pm</option>
				</select></td>
			</tr>
			<tr>
				<td><a>Departure City: </a>
				<td><select id='city' name='city'>
					<option value="Toronto">Toronto</option>
					<option value="Montreal">Montreal</option>
				</select></td>
			</tr>
		</table>
		<hr>
		<input type="submit" value="Confirm Selection" />
	</form>
	<form action="PaymentHistory.jsp">	
		<input type="submit" value='Transaction History' />
	</form>
	
	</body>
</html>