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
	String url="jdbc:oracle:thin:@//172.20.0.5:1521/cisdb";
	String user="cisuat";
	String pass="kbl123";
	String driverName="oracle.jdbc.driver.OracleDriver";
	Class.forName(driverName);
	Connection con=DriverManager.getConnection(url,user,pass);
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from ATTACMENT_TBL");
	while(rs.next())
	{%>
		<html>
				<body>
						<table border="1" width="100%">
							<tr>
								<td><%=rs.getString(1)%></td>
							</tr>
							<tr>
								<td><%=rs.getString(2)%></td>
							</tr>
						</table>
				</body>
		</html>
	<%}}catch(Exception e){e.printStackTrace();}	
	
	/*Clob c=rs.getClob(1);
	System.out.println("File size"+c.length());
	Reader r=c.getCharacterStream();
	int ch;
	FileWriter fw=new FileWriter("attach.txt");
	System.out.println(fw);
	while((ch=r.read())!=-1)
		fw.write((char)ch);
		fw.close();*/
		
		
%>

