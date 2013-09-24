Airline-Reservation-System
==========================

A web based booking system for a local airline that runs multiple daily flights between Toronto and Montreal.

Let customers book one-way tickets between Toronto and Montreal. 
Assume that the company has two identical 3-seat planes that fly a total of 4 daily flights, 
which depart from either Toronto or Montreal at 10am and 8pm.

To book a flight, a customer specifies the departure city and date (e.g., Leaving from Toronto on March 10, 2012). 
The site should then present the user with the list of matching flights that have available space. 
After the user selects one of these flights, the site let the customer choose their seat assignment by 
clicking on an available seat on the plane's schematics.

Once the user is happy with their seat selection, the site collect their credit card information (including customer name, card number and expiration date), 
and their billing address (including street number, city, province and postal code). 
Validation for all inputs and record the payment is available.

Finally, the display a summary page with the customer's flight information, 
and provide a way to print the page (a simple example that shows how to print from JavaScript is available here).

For simplicity, there are following assumptions:

Tickets cannot be bought for the current date
Tickets can be bough at most 2 weeks in advance
Only 1 ticket can be bought at a time
All tickets cost $100
To implement this application you will need to setup and run Apache Tomcat.

The application is implemented using the following technologies: 
Java Servlets, JSP, XHTML, CSS, JavaScript, and DOM. Use CSS style sheets in favor of deprecated HTML tags and attributes.
Store all information about available seats and sold flights in memory.
For simplicity, assume that only 1 customer will use the site at any given time, 
i.e., there is no need to implement concurrency control for this application.
The site includes a page that provides information about all tickets that have been sold since the site started running.
For each transaction, include information about the flight, seat number and the customer's credit card data.

The application is easy to use.
The main entry page for the site is called index.html.
