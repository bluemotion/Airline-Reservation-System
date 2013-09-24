package csc309.jsp;

public class PaymentSummary{
    public String street;
    public String city;
    public String suit;
    public String province;
    public String postalCode;
    public String cardNumber;
    public String expireYear;
    public String expireMonth;           
    public String cardHolderName;               
    public String price;
    
    public PaymentSummary (String street, String suit, String city, String province, String postalCode, String cardNumber, 
            String expireYear, String expireMonth, String cardHolderName, String price) {
        
        this.street = street;
        this.suit = suit;
        this.city = city;
        this.province = province;
        this.postalCode = postalCode;
        this.cardNumber = cardNumber;
    	this.expireYear = expireYear;
    	this.expireMonth = expireMonth;
    	this.cardHolderName = cardHolderName; 
    	this.price = price;
    	
    	
    	
    }
    public String getStreet(){
		return this.street;
	}
}