<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation the user details</title>
</head>
		<%
		    String sname=request.getParameter("sname");
		    String name=request.getParameter("name");
		    String qualif=request.getParameter("qualif");
		    String dob=request.getParameter("fromDate");
		    String street=request.getParameter("street");
		    String city=request.getParameter("city");
		    String dist=request.getParameter("dist");
		    String state=request.getParameter("state");
		    String pin=request.getParameter("pin");
		    String country=request.getParameter("country");
		    String mobile=request.getParameter("mobile");
		    String email=request.getParameter("Email");
		    
		    application.setAttribute("sname",sname);
		    application.setAttribute("name",name);
		    application.setAttribute("qualif",qualif);
		    application.setAttribute("dob",dob);
		    application.setAttribute("street",street);
		    application.setAttribute("city",city);
		    application.setAttribute("state",state);
		    application.setAttribute("pin",pin);
		    application.setAttribute("country",country);
		    application.setAttribute("mobile",mobile);
		    application.setAttribute("email",email);
		    application.setAttribute("dist",dist);
		  %>
	<body bgcolor="#008B8B">
	<form action="RegisterInsert.jsp" method='POST'>
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
		<table width="50%" align="center" border="0">
			<tr>
				<td width='20%'><font color="white"><b>SurName</b></font></td>
				<td width='30%'><%=sname %></td>
				<td width='20%'><font color="white"><b>Name</b></font></td>
				<td align='right'><%=name %></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Qualification</b></font></td>
				<td><%=qualif%></td>
				<td width='20%'><font color="white"><b>DOB</b></font></td>
				<td align='right'><%=dob%></td>
			</tr>
		</table><br>
		<table  border='0' width='48%' align="center">
			<tr bgcolor="">
				<td><h2><font color="yellow"><b>Address Details</b></font></h2></td>
			</tr>
		</table>
		<table width='48%' align='center' border='0'>
			<tr>
				<td width='20%'><font color="white"><b>Street</b></font></td>
				<td width='30%'><%=street%></td>
				<td width='20%'><font color="white"><b>City</b></font></td>
				<td align='right'><%=city%></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>District</b></font></td>
				<td><%=dist%></td>
				<td width='20%'><font color="white"><b>State</b></font></td>
				<td align='right'><%=state%></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Pin code</b></font></td>
				<td><%=pin%></td>
				<td width='20%'><font color="white"><b>Country</b></font></td>
				<td align='right'><%=country%></td>
			</tr>
			<tr>
				<td width='20%'><font color="white"><b>Mobile No</b></font></td>
				<td><%=mobile%></td>
				<td width='20%'><font color="white"><b>Email</b></font></td>
				<td align='right'><%=email%></td>
			</tr>
			<tr>
				<td colspan='4'>&nbsp;</td>
			</tr>
			<tr align="center">
				<td colspan='4'><input type="submit" value=" Confirm " >&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Cancel" ></td>
			</tr>
		</table>
</form>

</body>
</html>