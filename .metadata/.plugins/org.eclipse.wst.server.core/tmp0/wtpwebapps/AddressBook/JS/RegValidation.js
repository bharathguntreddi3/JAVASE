var calendar_startDate;

	 function displayCalendar(){
		
		calendar_startDate = new Calendar();
		calendar_startDate.setMonthNames(new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"));
		calendar_startDate.setShortMonthNames(new Array("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"));
		calendar_startDate.setWeekDayNames(new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"));
		calendar_startDate.setShortWeekDayNames(new Array("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"));
		calendar_startDate.setFormat("dd-MM-yyyy");
		calendar_startDate.setFirstDayOfWeek(0);
		calendar_startDate.setMinimalDaysInFirstWeek(1);
		calendar_startDate.setIncludeWeek(false);
		calendar_startDate.create();
		calendar_startDate.onchange = function(){		
			document.getElementById("fromDate").value= calendar_startDate.formatDate();
		}		     	        	
	    	
     	
	}
	
		function capture()
		{
		 var sname=document.getElementById("sname").value;
		 var name=document.getElementById("name").value;
		 var qualif=document.getElementById("qualif").value;
		 var fromDate=document.getElementById("fromDate").value;
		 var street=document.getElementById("street").value;
		 var city=document.getElementById("city").value;
		 var dist=document.getElementById("dist").value;
		 var state=document.getElementById("state").value;
		 var pin=document.getElementById("pin").value;
		 var country=document.getElementById("country").value;
		 var mobile=document.getElementById("mobile").value;
		 var Email=document.getElementById("Email").value;
		 
		 var dd=document.getElementById("dd");

		 var reg=/^[^ ][a-z]{1,}$/;
		 var reg1=/^[^ ][a-z A-Z]{1,}$/;
		 var reg2=/^[^0][0-9]{1,}$/;
		 var reg3=/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		 var reg4=/^[^ ][0-9]{1,2}(-)[0-9]{1,2}(-)[0-9]{1,4}$/;
		 
		 
		 if(sname=="")
		 	dd.innerHTML="Please Enter Sur Name..!";
		 else if(!(reg.test(sname)))
			 dd.innerHTML="Please Enter Sur Name Only  Characters..!";
		 else if(name=="")
			 	dd.innerHTML="Please Enter Name..!";
		else if(!(reg1.test(name)))
				 dd.innerHTML="Please Enter Name Only  Characters..!";
		else if(qualif=="select")
		 	dd.innerHTML="Please Select Qualification..!";
	    //else if(!(reg1.test(qualif)))
			// dd.innerHTML="Please Enter Proper Qualification..!";
	    else if(fromDate=="")
		 	dd.innerHTML="Please Enter DOB..!";
	    else if(!(reg4.test(fromDate)))
			 dd.innerHTML="Please Click Beside Image..!<sub>(Ex:04-09-2012)</sub>"; 
	    else if(street=="")
		 	dd.innerHTML="Please Enter Street..!";
		else if(!(reg1.test(street)))
			 dd.innerHTML="Please Enter Street Only  Characters..!";
		else if(city=="")
		 	dd.innerHTML="Please Enter City..!";
		else if(!(reg1.test(city)))
			 dd.innerHTML="Please Enter City Only  Characters..!";
		else if(dist=="")
		 	dd.innerHTML="Please Enter District..!";
		else if(!(reg1.test(dist)))
			 dd.innerHTML="Please Enter District Only  Characters..!";
		else if(state=="")
		 	dd.innerHTML="Please Enter State..!";
		else if(!(reg1.test(state)))
			 dd.innerHTML="Please Enter State Only  Characters..!";
		else if(pin=="")
		 	dd.innerHTML="Please Enter Pin Code..!";
		else if(!(reg2.test(pin)))
			 dd.innerHTML="Please Enter Pin Code Only  Numbers..!";
		else if(country=="")
		 	dd.innerHTML="Please Enter Country..!";
		else if(!(reg1.test(country)))
			 dd.innerHTML="Please Enter Country Only  Characters..!";
		else if(mobile=="")
		 	dd.innerHTML="Please Enter Mobile Number..!";
		else if(!(reg2.test(mobile)))
			 dd.innerHTML="Please Enter Only  Numbers for Mobile Number ..!";
		 
		else if(Email=="")
		 	dd.innerHTML="Please Enter Email Adress..!";
		else if(!(reg3.test(Email)))
			 dd.innerHTML="Please Enter Proper Email Adress ..!<sub>(Ex:sivajibonu@gmail.com/co.in/in)</sub>";
			 
		 else
			{
			   dd.innerHTML="";
				document.forms[0].action="RegistrationConf.jsp";
				document.forms[0].submit();
			}

		}