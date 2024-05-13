<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

		<%
		
		String s=(String)application.getAttribute("s");
		
		String uname=(String)application.getAttribute("a");
		System.out.println("User Name is :: "+uname);
		application.setAttribute("uname",uname);
		String pswd=(String)application.getAttribute("b");
		
	
		
		try{
                String url="jdbc:oracle:thin:@//172.20.0.5:1521/cisdb";
				String user="cisuat";
				String pass="kbl123";
				String driverName="oracle.jdbc.driver.OracleDriver";
				Class.forName(driverName);
				Connection con=DriverManager.getConnection(url,user,pass);
		
		PreparedStatement pst=con.prepareStatement("select * from USER_DETAILS_TBL where name='"+uname+"'");
		int cnt=pst.executeUpdate();
		ResultSet rs=pst.getResultSet();
		ResultSetMetaData rsmd=rs.getMetaData();
		int colcnt=rsmd.getColumnCount();
		if(cnt>=1){
			%>
		<html>
		<head>
		<script language="javascript">
				function ModifyUserDetails()
				{
					document.forms[0].action="../JSP/ModifyUserDetails.jsp";
					document.forms[0].submit();
				}
		</script>
		</head>
		<body bgcolor=""><br/>
		<form method="post" target="_blank">
		<fieldset>
    	<legend><font color="#008B8B"><b>Your AdressBook Details</b></font></legend>
			<table border=1  width='98%' cellspacing=3 cellpadding=8>
			
		                         <tr >
								 <%for(int index=1;index<=colcnt-1;index++){
	                               %>
		                             <th style="color:Teal"><%=rsmd.getColumnName(index)%></th>
									 <%}%>
									 </tr>
		             
		 <%  
			   while(rs.next()){
			  			String sname=rs.getString(1);
						String name=rs.getString(2);
						String qualif=rs.getString(3);
						String dob=rs.getString(4);
						String street=rs.getString(5);
						String city=rs.getString(6);
						String dist=rs.getString(7);
						String state=rs.getString(8);
						String pin=rs.getString(9);
						String country=rs.getString(10);
						String mobile=rs.getString(11);
						String email=rs.getString(12);
						
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
			  
			  <tr>
			 <%
			  for(int index=1;index<=colcnt-1;index++){
			 %>
			 	
			    <td align="center" style="color:#008B8B"><%=rs.getString(index)%></td>
		     <%
			   }
			   %>
			   </tr>
			   <%
			   }}}catch(Exception e){e.printStackTrace();}
				   %>
		   </table>
		   <br><br><br>
		   <center>
		   <input type="button" value="MODIFY" onClick="ModifyUserDetails()">&nbsp;<input type="button" value="CANCEL" onclick='history.back()'>
		   </center></fieldset>
 </form>
</body>
</html>
