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
<body>
<form action="RegistrationAck.jsp" method="post">
	<%
		    String sname=(String)application.getAttribute("sname");
		    String name=(String)application.getAttribute("name");
		    String qualif=(String)application.getAttribute("qualif");
		    String dob=(String)application.getAttribute("dob");
		    
		    String street=(String)application.getAttribute("street");
		    String city=(String)application.getAttribute("city");
		    String dist=(String)application.getAttribute("dist");
		    String state=(String)application.getAttribute("state");
		    String pin=(String)application.getAttribute("pin");
		    String country=(String)application.getAttribute("country");
		    String mobile=(String)application.getAttribute("mobile");
		    String email=(String)application.getAttribute("email");
		    try{ 
		    	String s=null;
		    	String q="select user_seq_id.nextval from dual";
		    	
                String url="jdbc:oracle:thin:@//172.20.0.5:1521/cisdb";
				String user="cisuat";
				String pass="kbl123";
				String driverName="oracle.jdbc.driver.OracleDriver";
				Class.forName(driverName);
				Connection con=DriverManager.getConnection(url,user,pass);
				
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery(q);
				while(rs.next())
				{
				s=rs.getString(1);
				}
				System.out.println("the sequence for USER_ID is :: "+s);
				
			    PreparedStatement pstmt=con.prepareStatement("insert into USER_DETAILS_TBL values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			    pstmt.setString(1,sname);
			    pstmt.setString(2,name);
			    pstmt.setString(3,qualif);
			    pstmt.setString(4,dob);
			    pstmt.setString(5,street);
			    pstmt.setString(6,city);
			    pstmt.setString(7,dist);
			    pstmt.setString(8,state);
			    pstmt.setString(9,pin);
			    pstmt.setString(10,country);
			    pstmt.setString(11,mobile);
			    pstmt.setString(12,email);
			    pstmt.setString(13,s);
			    
			    int i=pstmt.executeUpdate();
			    con.commit();
			  
			    if(i>0){
			    	application.setAttribute("s",s);
			    	response.sendRedirect("RegistrationAck.jsp");
			    }
			    else{
			    	out.println("Insertion Failed");
			    }
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		%>
</form>
</body>
</html>