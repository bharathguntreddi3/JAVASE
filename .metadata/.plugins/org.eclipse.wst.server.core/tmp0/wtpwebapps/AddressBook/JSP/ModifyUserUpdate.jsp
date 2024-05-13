<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AB user modification</title>
</head>
	  
<%

		    String sname=request.getParameter("sname");
		    String name=request.getParameter("name");
		    String qualif=request.getParameter("qualif");
		    System.out.println("qualification(ModifyUserUpdate.jsp) ::  "+qualif);
		    String dob=request.getParameter("fromDate");
		    String street=request.getParameter("street");
		    String city=request.getParameter("city");
		    String dist=request.getParameter("dist");
		    String state=request.getParameter("state");
		    String pin=request.getParameter("pin");
		    String country=request.getParameter("country");
		    String mobile=request.getParameter("mobile");
		    String email=request.getParameter("Email");  
		    
		    String sql="UPDATE USER_DETAILS_TBL SET SNAME='"+sname+"',QUALIFICATION='"+qualif+"',DOB='"+dob+"',STREET='"+street+"',CITY='"+city+"',DISTRICT='"+dist+"',STATE='"+state+"',PIN='"+pin+"',COUNTRY='"+country+"',MOBILE='"+mobile+"',EMAIL='"+email+"' WHERE NAME='"+name+"'";
		    try{
                String url="jdbc:oracle:thin:@//172.20.0.5:1521/cisdb";
				String user="cisuat";
				String pass="kbl123";
				String driverName="oracle.jdbc.driver.OracleDriver";
				Class.forName(driverName);
				Connection con=DriverManager.getConnection(url,user,pass);
				
				PreparedStatement ps=con.prepareStatement(sql);
				int i=ps.executeUpdate();
				con.commit();
				System.out.println("update sql "+sql);
				if(i>0){%>
			<body bgcolor="#008B8B">
	  		<form action="../index.jsp" method="get">
		<table>
			<tr >
				<td>
					<img src="../IMAGES/in11111dex.jpg" width="100%"></img>
				</td>
			</tr>
		</table>
		<table width="100%">
			<tr >
				<td bgcolor="white">
					<hr></hr>
				</td>
			</tr>
		</table><br/><br/><br/>
	    
	   
	    	<table width="100%">
	    	<tr>
	    		<td><h4><font color="white"><b>AB User details Updated Successfully For Your Account.............</b></font></h4></td>
	    	<tr>
	    	</table><br/><br/><br/>
	    	<table width="100%" align="center"> 
	    	<tr align="center">
	    		<td>
	    		<td><input type="button" name="" value="CLOSE" onclick='history.back()'></td>
	    		<!-- <img src="../IMAGES/SIGNIN.jpg" >  -->
	    	
	    		</tr>
	  		</table>
	  		</form>
	  		</body>
	  		</html>
		<%}
	else
	{%>
	<html>

	 <body bgcolor="#008B8B">
	  	<form action="FirstTimeUser.jsp" method="get">
	    	<!-- response.sendRedirect("index.jsp"); -->
		<table>
			<tr >
				<td>
					<img src="../IMAGES/in11111dex.jpg" width="100%"></img>
				</td>
			</tr>
		</table>
		<table width="100%">
			<tr >
				<td bgcolor="white">
					<hr></hr>
				</td>
			</tr>
		</table><br/><br/><br/>
	   
	   
	    	<table width="100%">
	    	<tr>
	    		<td><h4><font color="white"><b>Updation Problems.Please Try Again.............</b></font></h4></td>
	    	<tr>
	    	</table><br/><br/><br/>
	    	<table width="100%" align="center"> 
	    	<tr align="center">
	    		<td><input type="button" name="" value="back" onclick='history.back()'></td>
	    		</tr>
	  		</table>
	  		</form>
	  		</body>
	    </html>
	
	<%}
	}catch(Exception e){e.printStackTrace();}
%>



				