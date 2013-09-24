<!-- Begin: ListTheatres.jsp -->
<%@ page import="csc309.jsp.Reservation" %>
<%@ page import="csc309.jsp.PaymentSummary" %>


<html>
<head>
	<title>Check Out</title>
	<link rel="stylesheet" type="text/css" href="reservation.css" />
	<script type="text/javascript" src="checkout.js"></script>
</head>
<body>
	<h2>Check out</h2>
	<p>Please enter your payment information. Required *</p>
	<hr>
	<form action="ConfirmationPage.jsp" onsubmit="return validateForm(province,number, postalcode, year, month, city, streetName, clientName);">
		<table> 
				<tr>
					<td> Billing Address </td>					
				</tr>
				<tr>
					<td> Street name <span class='req'>*</span></td>
					<td> <input type = "text" name = "streetName" /> </td>
				</tr>
				<tr>
					<td> Apt/suit </td>
					<td> <input type = "text" name = "aptSuit" /> </td>
				</tr>
				<tr>
					<td> city <span class='req'>*</span></td>
					<td> <input type = "text" name = "city" /> </td>
				</tr>
				<tr>
					<td> Province </td>
					<td><select name="province">
							<option value ="non">Please select a province</option>
		          			<option value ="Alberta">Alberta</option>
                        	<option value ="BritishColumbia">British Columbia</option>
                        	<option value ="Manitoba">Manitoba</option>
                        	<option value ="NewBrunswick">New Brunswick</option>
                        	<option value ="NewFoundlandandLaborador">New Foundland and Laborador</option>
                        	<option value ="NorthWestTerritories">NorthWest Territories</option>
                        	<option value ="NovaScotia">Nova Scotia</option>
                        	<option value ="Nunavut">Nunavut</option>
                        	<option value ="Ontario">Ontario</option>
                        	<option value ="PrinceEdwardIsland">Prince Edward Island</option>
                        	<option value ="NorthWest Territories">NorthWest Territories</option>
                        	<option value ="Quebec">Quebec</option>
                        	<option value ="Saskatchewan">Saskatchewan</option>
                        	<option value ="Yukon">Yukon</option>
                        </select> 
                   	</td>
				</tr>
				<tr>
					<td> postal code <span class='req'>*</span></td>
					<td> <input type = "text" name = "postalcode" /> </td>
				</tr>
		</table>
		<br>	
		<hr>
		<br>
		<table> 
			<tr><td>Payment</td></tr>
			<tr>
				<td> Payment Method </td>
				<td>
					<select id="PaymentMethod_PaymentType" name="PaymentMethod.PaymentType">
  						<option value="Visa">VISA</option>
						<option value="MasterCard">MasterCard</option>
						<option value="Amex">American Express</option>
						<option value="Discover">Discover</option>
					</select>
				</td>
			</tr>								
 			<tr> 
				<td> Credit Card Number <span class='req'>*</span></td>
  				<td> <input type = "text" name = "number" /> </td>
			</tr>	
			
			<tr>
	          	<td> Expiration Data </td>
                <td><select name="month">
                		<option value ="non">select month</option>
		        		<option value ="1">Janunary</option>
                        <option value ="2">Feburary</option>
                        <option value ="3">March</option>
                        <option value ="4">April</option>
                        <option value ="5">May</option>
                        <option value ="6">June</option>
                        <option value ="7">July</option>
                        <option value ="8">August</option>
                        <option value ="9">September</option>
                        <option value ="10">October</option>
                        <option value ="11">November</option>
                        <option value ="12">December</option>
                        </select>
						<select name="year">
  						<option value="non">Select year</option>
  						<option value="2012">2012</option>
						<option value="2013">2013</option>
						<option value="2014">2014</option>
						<option value="2015">2015</option>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>
						<option value="2021">2021</option>
						<option value="2022">2022</option>
						<option value="2023">2023</option>
						<option value="2024">2024</option>
						<option value="2025">2025</option>
						<option value="2026">2026</option>
					</select>
				</td> 
        	</tr> 
	      	<tr> 
				<td> Name <span class='req'>*</span></td>
  				<td> <input type = "text" name = "clientName" /> </td>
			</tr>
		</table>
		<%	
			String seat = request.getParameter("sid");
			request.getSession().setAttribute("sid", seat);			
		%>
		<input type = "submit" value = "Submit Order"  />
		<input type = "reset" value = "Clear Order Form" />
	</form>
	<form action="Reserve.jsp">	
		<input type="submit" value='Go To Main' />
	</form>
</body>
</html>



