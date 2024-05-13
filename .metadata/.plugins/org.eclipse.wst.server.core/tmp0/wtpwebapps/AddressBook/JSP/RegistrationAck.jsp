
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
<body bgcolor="#008B8B">
<form action="../index.jsp" method="get">
<form  method="get">
<table >
	<tr ><td>
			<img src="../IMAGES/in11111dex.jpg" width="100%"></img>
	</td></tr>
</table>
<table width="100%">
	<tr ><td bgcolor="white">
			<hr></hr>
	</td></tr>
</table><br/><br/><br/>

<%
	try{
		String uname=null;
		String s=(String)application.getAttribute("s");
		application.setAttribute("s",s);
		String username="select name,substr(dob,1,2)||'@'||substr(mobile,4,5) from USER_DETAILS_TBL where user_id='"+s+"'";
		//String passwd="select substr(mobile,5,5) from USER_DETAILS_TBL where user_id='"+s+"'";
		
				String url="jdbc:oracle:thin:@//172.20.0.5:1521/cisdb";
				String user="cisuat";
				String pass="kbl123";
				String driverName="oracle.jdbc.driver.OracleDriver";
				Class.forName(driverName);
				Connection con=DriverManager.getConnection(url,user,pass);
		    
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(username);
		while(rs.next()){
			String un=rs.getString(1);
			String pswd=rs.getString(2);
			application.setAttribute("un",un);
			application.setAttribute("pswd",pswd);
		
			%>
			<%
			PreparedStatement pstmt=con.prepareStatement("insert into LOGIN_TBL values(?,?,'FU',?)");
		    	pstmt.setString(1,un);
		    	pstmt.setString(2,pswd);
		    	pstmt.setString(3,s);
		    	pstmt.executeUpdate();
			%>

	<table width='1000%' align='center' border='0'>
			<tr bgcolor="">
				<td><b>Online AddressBook Registration Acknowledgment</b></td>
			</tr>
	</table>
	<table width='1000%' align='center' border='0'>
			<tr>
				<td><font color="white"><b>Registration success fully with USERNAME</b></font> :: 
					<%=un%> <font color="white"><b>and PASSWORD </b></font> :: <%=pswd%>
				</td><%}%>
			</tr>
	</table></br><br/><br/>
	<center><input type="submit" value="Continue to Login"></center>	
<%}catch(Exception e){e.printStackTrace();}%>
</form>
</body>
</html>
