<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address Book Registration Page</title>
<script language="javascript" src="../JS/ModRegValidation.js"></script>
<script language="javascript" src="../JS/datepicker.js"></script>

</head>
<%

		String sname=(String)application.getAttribute("sname");
		String name=(String)application.getAttribute("name");
		System.out.println("user name in ModifyUserDetails.jsp ::: "+name);
		String qualif=(String)application.getAttribute("qualif");
		System.out.println("Qualification in ModifyUserDetails.jsp ::: "+qualif);
		String dob=(String)application.getAttribute("dob");
		System.out.println("DOB in ModifyUserDetails.jsp ::: "+dob);
		String street=(String)application.getAttribute("street");
		String city=(String)application.getAttribute("city");
		String dist=(String)application.getAttribute("dist");
		String state=(String)application.getAttribute("state");
		String pin=(String)application.getAttribute("pin");
		String country=(String)application.getAttribute("country");
		String mobile=(String)application.getAttribute("mobile");
		String email=(String)application.getAttribute("email");
	
 %>
<body onload="displayCalendar()" bgcolor="#008B8B">
<form>
<table >
	<tr ><td>
			<img src="../IMAGES/in11111dex.jpg" width="100%"></img>
	</td></tr>
</table>
<table width="100%">
	<tr ><td bgcolor="white">
			<hr></hr>
	</td></tr>
</table><br/></br>
<center><h2><font color="yellow"><b>Welcome to Online Address Book Registration</b></font></h2></center>

		<table width="48%" align="center" border="0">
			<tr>
				<td width='20%'><font color="white"><b>SurName</b></font></td>
				<td width='20%'><input type="text" name="sname"id="sname" value="<%=sname %>"></td>
				<td width='20%'><font color="white"><b>Name</b></font></td>
				<td  width='20%'><input type="text" name="name" id="name" value="<%=name %>" readonly></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Qualification</b></font></td>
				<td width='20%'>
				<select name="qualif"  id="qualif" value="<%=qualif %>">
				<option value="select">---------select----------</option>
				<option value="<%=qualif %>">SSC</option>
				<option value="<%=qualif %>">INTER</option>
				<option value="<%=qualif %>">BTech</option>
				<option value="<%=qualif %>">BSC</option>
				<option value="<%=qualif %>">MCA</option>
				<option value="<%=qualif %>">MSC</option>
				<option value="<%=qualif %>">MTech</option>
				<option value="<%=qualif %>">UG</option>
				<option value="<%=qualif %>">PG</option>
				</select>
				</td>
				<td width='20%'><font color="white"><b>DOB</b></font></td>
				<td width='20%'>
				<input type="text" id="fromDate" name="fromDate"  size="16" value="<%=dob %>">		
					       <a href="javascript:calendar_startDate.toggle(document.getElementById('fromDate'));">
					       <img src='../IMAGES/cal.png' width="20" height="20" border="0" alt="Pick a date"></a>
				</td>
			</tr>
		</table>
		<br>
		<table  border='0' width='48%' align="center">
			<tr bgcolor="">
				<td><h2><font color="yellow"><b>Address Details</b></font></h2></td>
			</tr>
		</table>
	
		<table width='48%' align='center' border='0'>
			<tr>
				<td width='20%'><font color="white"><b>Street</b></font></td>
				<td width='20%'><input type="text" name="street" id="street" value="<%=street %>"></td>
				<td width='20%'><font color="white"><b>City</b></font></td>
				<td width='20%'><input type="text" name="city" id="city" value="<%=city %>"></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>District</b></font></td>
				<td width='20%'><input type="text" name="dist" id="dist" value="<%=dist %>"></td>
				<td width='20%'><font color="white"><b>State</b></font></td>
				<td width='20%'><input type="text" name="state" id="state" value="<%=state %>"></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Pin code</b></font></td>
				<td width='20%'><input type="text" name="pin" maxlength="6" id="pin" value="<%=pin %>"></td>
				<td width='20%'><font color="white"><b>Country</b></font></td>
				<td width='20%'><input type="text" name="country"  id="country" value="<%=country %>"></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Mobile No</b></font></td>
				<td width='10%'><input type="text" name="mobile" maxlength="10" id="mobile" size="13" value="<%=mobile %>"></td>
				<td width='20%'><font color="white"><b>Email</b></font></td>
				<td width='20%'><input type="text" name="Email"  id="Email" value="<%=email %>"></td>
			</tr>
			<tr>
				<td colspan='4'>&nbsp;</td>
			</tr>
			</table>
			
			<table width='48%' align='center' border='0'>
			<tr align="center">
				<td colspan='4'><input type="submit" value=" Update " onclick="capture()">&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button"  value="Cancel" onClick='history.go(-2)'></td>
			</tr>
		</table>

		<center>
		<div id="dd" style="color:white"></div>
		</center>
	</form>	
</body>
</html>