<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	try{
	String pswd=new String();
	String s=(String)application.getAttribute("s");
	
	String username=(String)application.getAttribute("username");
	 
	String oldpswd=request.getParameter("oldpswd");
	String newpswd=request.getParameter("newpswd");
	
	String confpswd=request.getParameter("confpswd");
	String sql="select password from LOGIN_TBL where user_status='FU' and username='"+username+"'";
	String sql1="update login_tbl set password='"+newpswd+"',user_status='SU' where user_status='FU' and username='"+username+"'";
	
	String url="jdbc:oracle:thin:@//172.20.0.5:1521/cisdb";
	String user="cisuat";
	String pass="kbl123";
	String driverName="oracle.jdbc.driver.OracleDriver";
	Class.forName(driverName);
	Connection con=DriverManager.getConnection(url,user,pass);
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	while (rs.next()) {
	    pswd = rs.getString(1); 

	if(pswd.equalsIgnoreCase(oldpswd))
	{
		PreparedStatement ps=con.prepareStatement(sql1);
		int i=ps.executeUpdate();
		 con.commit();
		if(i>0){%>
	    		 <body bgcolor="#008B8B">
	  		<form action="../index.jsp" method="get">
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
	    		<td><h4><font color="white"><b>Password Changed Successfully For Your Account.............</b></font></h4></td>
	    	<tr>
	    	</table><br/><br/><br/>
	    	<table width="100%" align="center"> 
	    	<tr align="center">
	    		<td>
	    		<td><input type="submit" name="" value="SignIn" ><input type="button" name="" value="Exit"></td>
	    		<!-- <img src="../IMAGES/SIGNIN.jpg" >  -->
	    	
	    		</tr>
	  		</table>
	  		</form>
	  		</body>
	  		</html>
		<%}
	}
	
	else
	{%>
	<html>
		<script>
			function first()
			{
				
			}
		</script>
	
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
	    		<td><h4><font color="white"><b>The Old Password Given incorrect.............</b></font></h4></td>
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
	
	}
	}catch(Exception e){e.printStackTrace();}
%>



