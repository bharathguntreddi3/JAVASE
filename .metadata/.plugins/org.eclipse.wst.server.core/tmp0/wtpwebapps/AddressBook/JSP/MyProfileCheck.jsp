<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AB user modification</title>
<script language="javascript" src="../JS/NameCheckedProfile.js"></script> 
<script language="javascript">
	
		function Check()
		{	
			var name=document.getElementById("name").value;
			var dd=document.getElementById("dd");
			
			var reg=/^[^ ][a-z]{1,}$/;
			if(name=="")
			{
		 	dd.innerHTML="Please Enter Name..!";
		 
		 	}
		 	else if(!(reg.test(name)))
		 	{
			 dd.innerHTML="Please Enter Name Only  Characters..!";
			}
			else
			{
				dd.innerHTML="";
				document.forms[0].action="../JSP/MyProfile.jsp";
				document.forms[0].submit();
			}
		}
</script>
</head>

<%
	
	String uname=(String)application.getAttribute("a");
		System.out.println("User Name in MyProfileCheck.jsp  :: "+uname);
		application.setAttribute("uname",uname);
 %>
<body></br></br></br></br>
<form action="">
		<center><font color="#008B8B" face="Bradley Hand ITC" size="6"><b>Address Book Details For Your User</b></font></center>
		</br></br>
		<table width="50%" align="center">
			<tr>
				<td><font color="#008B8B" face="Bradley Hand ITC" size="5"><b>Enter UserName</b></font>
				<input type="text" name="name" value="" id="name" onblur="nameChecked()"></td>
			</tr>
		
		</table></br></br>
		</form>
		<table width='48%' align='center' border='0'>
			<tr align="center">
				<td colspan='4'><input type="submit" value=" submit " onClick="Check()">&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" name="" value="Cancel" onclick='history.back()'></td>
			</tr>
		</table></br>


<center>
<div id="dd" style="color:#008B8B"></div>
</center>
<input type="hidden" name="uname" id="uname">
</body>
</html>