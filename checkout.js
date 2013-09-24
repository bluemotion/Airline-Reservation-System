var monthText=['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sept','Oct','Nov','Dec'];
var dayText=['Mon','Tue','Wed','Thu','Fri','Sat','Sun'];
var selectedSeat = 'none';

function validateForm(province,number, postalcode, year, month, city, streetName, clientName) {
	if (clientName.value.length==0 || city.value.length==0 || streetName.value.length==0)  {
		alert("*Fields required");
		return false;
	}
	
	if (month.value=="non" || year.value=="non")  {
		alert("please select expiration date");
		return false;
        } 
	         
	if (!number.value.match(/\d{10}/) || number.value.length > 10)  {
		alert("Credit card number most be 10 digits!");
		return false;
	}
              
	if (province.value=="non")  {
		alert("please select a province");
		return false;
	}
               
	var regEx = /[a-zA-Z][0-9][a-zA-Z]\s*[0-9][a-zA-Z][0-9]$/;       
	if (!regEx.test(postalcode.value))  {
		alert("invalide postal code");
		return false;
	}
              
	if (!number.value.match(/\d{10}/) || number.value.length > 10)  {
		alert("Credit card number most be 10 digits!");
		return false;
	}              
	return true;
}

function resetSelSeat() {
	selectedSeat = 'none';
}

function validateSeat() {
	if (selectedSeat == 'none') {
		alert("No seat is selected!");
		return false;
	}
	return true;
}
		
function populatedropdown(){
	var myDate = new Date();
	var fulldate = document.getElementById('date');			

	var year = myDate.getFullYear();
	var month = myDate.getMonth();
	var date = myDate.getDate();
	var day = myDate.getDay();
				
				
	for (var i = 0; i < 13; i++) {
		myDate.setDate(myDate.getDate()+1);
		year = myDate.getFullYear();
		month = myDate.getMonth();
		date = myDate.getDate();
		day = myDate.getDay();
					
		fulldate.options[i] = new Option(dayText[day] + ', ' + monthText[month] + '-' + date + '-' + year);
	}
}



function seatSelect(obj) {
	var hidden = document.getElementById('sid');
				
	if (selectedSeat != 'none') {
		var prevSelSeat = document.getElementById(selectedSeat);
		prevSelSeat.style.background = 'white';
	}
	obj.style.background = '#66CD00';
	selectedSeat = obj.id;
	hidden.value = selectedSeat;
}