package csc309.jsp;

import java.util.*;
import javax.servlet.http.*;

public class Initialization extends HttpServlet {
    public void init() {
    	Reservation flightdata = new Reservation();
    	this.getServletContext().setAttribute("flightdata", flightdata);
    }
}
