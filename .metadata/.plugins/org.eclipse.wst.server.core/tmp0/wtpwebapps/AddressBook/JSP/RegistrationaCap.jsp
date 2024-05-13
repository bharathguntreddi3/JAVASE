<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address Book Registration Page</title>
<script language="javascript" src="../JS/RegValidation.js"></script>
<script language="javascript" src="../JS/datepicker.js"></script>
<script language="javascript" src="../JS/NameChecked.js"></script>
</head>
<body onload="displayCalendar()" bgcolor="#008B8B">
<form action="">
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
				<td width='20%'><input type="text" name="sname"id="sname"></td>
				<td width='20%'><font color="white"><b>Name</b></font></td>
				<td  width='20%'><input type="text" name="name" id="name" onblur="nameChecked()"></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Qualification</b></font></td>
				<td width='20%'>
				<select name="qualif"  id="qualif" >
				<option value="select">----------Select----------</option>
				<option value="SSC">SSC</option>
				<option value="INTER">INTER</option>
				<option value="BTech">BTech</option>
				<option value="BSC">BSC</option>
				<option value="MCA">MCA</option>
				<option value="MSC">MSC</option>
				<option value="MTech">MTech</option>
				<option value="UG">UG</option>
				<option value="PG">PG</option>
				</select>
				</td>
				<td width='20%'><font color="white"><b>DOB</b></font></td>
				<td width='20%'>
				<input type="text" id="fromDate" name="fromDate"  size="16"/>		
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
				<td width='20%'><input type="text" name="street" id="street"></td>
				<td width='20%'><font color="white"><b>City</b></font></td>
				<td width='20%'><input type="text" name="city" id="city"></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>District</b></font></td>
				<td width='20%'><input type="text" name="dist" id="dist" ></td>
				<td width='20%'><font color="white"><b>State</b></font></td>
				<td width='20%'><input type="text" name="state" id="state"></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Pin code</b></font></td>
				<td width='20%'><input type="text" name="pin" maxlength="6" id="pin"></td>
				<td width='20%'><font color="white"><b>Country</b></font></td>
				<td width='20%'><input type="text" name="country"  id="country"></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Mobile No</b></font></td>
				<td width='10%'><input type="text" value="+91" disabled size="2">
				<input type="text" name="mobile" maxlength="10" id="mobile" size="13"></td>
				<td width='20%'><font color="white"><b>Email</b></font></td>
				<td width='20%'><input type="text" name="Email"  id="Email"></td>
			</tr>
			<tr>
				<td colspan='4'>&nbsp;</td>
			</tr>
			</table>
			</form>
			<table width='48%' align='center' border='0'>
			<tr align="center">
				<td colspan='4'><input type="submit" value=" submit " onclick="capture()">&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" name="" value="Cancel" onclick='history.back()'></td>
			</tr>
		</table>
		<center>
		<div id="dd" style="color:white"></div>
		</center>

</body>
</html>