<%@ page import="csc309.jsp.Reservation" %>
<%@ page import="csc309.jsp.Flight" %>

<html>
	<head>
		<title>Seat Selection</title>
		<link rel="stylesheet" type="text/css" href="reservation.css" />
		<script type="text/javascript" src="checkout.js"></script>
	</head>
	<body class="reserve">
		<h1>Seat Selection</h1>
		<hr>
		<form action="Checkout.jsp" method="post" onsubmit="return validateSeat();">
			<table align="center">
				<td width="319" height="368" background="seats.png">
				<%
					Reservation flightdata = (Reservation)this.getServletContext().getAttribute("flightdata");
					String fdate = request.getParameter("date");
					String time = request.getParameter("time");
					String city = request.getParameter("city");
					Boolean [] availSeats = {true, true, true};
	
					request.getSession().setAttribute("date", fdate);
					request.getSession().setAttribute("time", time);
					request.getSession().setAttribute("city", city);
					for (int i=0; i < flightdata.flights.size(); i++) {
						Flight aFlight = flightdata.flights.get(i);
						if ((aFlight.date).equals(fdate) &&
							(aFlight.time).equals(time) &&
							(aFlight.city).equals(city)) {
							availSeats[aFlight.seat] = false;
						}
					}
	
					for (int i=0; i < 3; i++) {
						if (availSeats[i]) {
				%>
					<span id="<%= i%>" class="seat<%= i%>" onclick="seatSelect(this)"><%= i%></span>
				<%
						} else {
				%>
					<span id="<%= i%>" class="taken<%= i%>"><%= i%></span>
				<%
						}
					}
				%>
				</td>
			</table>
			<hr>
			<input type="hidden" id='sid' name='sid' value='' />
			<input type="submit" value="Confirm Selection" />
		</form>
		<form action="Reserve.jsp">	
			<input type="submit" value='Go Back' />
		</form>
	</body>
</html>