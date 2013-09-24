<%@ page import="csc309.jsp.Reservation" %>
<%@ page import="csc309.jsp.Flight" %>
<%@ page import="csc309.jsp.PaymentSummary" %>


<html>
	<head>
		<link rel="stylesheet" type="text/css" href="reservation.css" />
		<script type="text/javascript" src="checkout.js"></script>
	</head>
	<body>
	<h2> Reservation Summary</h2>
	<hr>
		<table>
			<%
				Reservation flightdata = (Reservation)this.getServletContext().getAttribute("flightdata");
				
				if (!((String) request.getSession().getAttribute("date")).equals("")) {;
					String fdate = (String) request.getSession().getAttribute("date");
					String time = (String) request.getSession().getAttribute("time");
					String city = (String) request.getSession().getAttribute("city");
					int seat = Integer.parseInt((String)request.getSession().getAttribute("sid"));
					flightdata.flights.add(new Flight(fdate, time, city, seat));
	
					PaymentSummary singlePayment = new PaymentSummary(
						request.getParameter("streetName"),
						request.getParameter("suit"),
						request.getParameter("city"),
						request.getParameter("province"),
						request.getParameter("postalCode"),
						request.getParameter("number"),
						request.getParameter("year"),
						request.getParameter("month"),
						request.getParameter("clientName"),
						"100");
					flightdata.paymentSummarys.add(singlePayment);
					
					
					this.getServletContext().setAttribute("flightdata", flightdata);
					request.getSession().setAttribute("date", "");
				}
				int last = flightdata.paymentSummarys.size() - 1;
				
			%>
			<tr><td>Passenger Name : </td><td><%= flightdata.paymentSummarys.get(last).cardHolderName %></td></tr>
			<tr><td>Departure Date : </td><td><%= flightdata.flights.get(last).date %></td></tr>
			<tr><td>Departure Time : </td><td><%= flightdata.flights.get(last).time %></td></tr>
			<tr><td>Seat number : </td><td><%= flightdata.flights.get(last).seat %></td></tr>
			<tr><td>Credit card number : </td><td><%= flightdata.paymentSummarys.get(last).cardNumber %></td></tr>
			<tr><td>Credit expire date : </td><td><%= flightdata.paymentSummarys.get(last).expireMonth %>/<%= flightdata.paymentSummarys.get(last).expireYear %></td></tr>
			<tr><td>total cost : </td><td>$100</td></tr>
		</table>
		<hr>
		<form action="Reserve.jsp">	
			<input type="submit" value='Go To Main' />
			<button type="button" onclick="window.print()">Print Page</button>
		</form>
	</body>
</html>