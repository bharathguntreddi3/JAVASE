function nameChecked()
{
	
	var name=document.getElementById("name").value;
	//var uname=document.getElementById("uname").value;
	//alert("name value is :: "+name);
	var url="../JSP/NameCheckedProfile.jsp?name="+name;
	//alert("url value is :: "+url);
	if(window.XMLHttpRequest)
	{
        	req=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
        	req=new ActiveXObject("Microsoft.XMLHTTP");
	}
	req.open("GET" , url , false);
	req.onreadystatechange=setNameChecked;
	req.send();
}

function setNameChecked()
{
	
	if(req.readyState==4)
        {
                if(req.status==200)
                {
                     
                        message = req.responseXML.getElementsByTagName("xml");
                        options = new Array();
                        options=message[0].childNodes;
												
                        for(i=0;i<options.length;++i)
                        {
                              NameValue=options[i].childNodes[0].nodeValue;
							 //alert("the childNodes(NameValue) values ..."+NameValue); 
							  var name1=document.getElementById("name").value;
							  //alert("name1 == "+name1);
		                  		/*var n = NameValue.localeCompare(name1);
		                  	
		                        if(n==0)
		                        {
		                        	alert(" Enter Your User Name ");
		                        	document.forms[0].name.value="";
		                        	document.forms[0].name.focus();
		                        } */   
		                        if(name1!==NameValue)
		                        {
		                        	document.forms[0].name.focus();
		                        	alert(" Enter Your User Name ");
		                        	document.forms[0].name.value="";
		                        	
		                        }   
							  	  
									
                        }
                        		
                        		
		                        
		                        
                }
        }
         						
}
