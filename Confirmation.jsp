<%@ page import="csc309.jsp.Reservation" %>
<%@ page import="csc309.jsp.Flight" %>

<html>
	<head>
		
	</head>
	<body>
	
		<%
				Reservation flightdata = (Reservation)this.getServletContext().getAttribute("flightdata");
				String fdate = (String) request.getSession().getAttribute("date");
				String time = (String) request.getSession().getAttribute("time");
				String city = (String) request.getSession().getAttribute("city");
				int seat = Integer.parseInt(request.getSession().getAttribute("city"));
				flightdata.flights.add(new Flight(fdate, time, city, seat));
				this.getServletContext().setAttribute("flightdata", flightdata);
		%>
	</body>
</html>