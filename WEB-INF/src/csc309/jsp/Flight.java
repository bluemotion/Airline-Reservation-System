package csc309.jsp;

public class Flight {
	public String date;
	public String time;
	public String city;
	public int seat;
	
	public Flight(String date, String time, String city, int seat) {
		this.date = date;
		this.time = time;
		this.city = city;
		this.seat = seat;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}

	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}

	public int getSeat() {
		return seat;
	}


	public void setSeat(int seat) {
		this.seat = seat;
	}
}