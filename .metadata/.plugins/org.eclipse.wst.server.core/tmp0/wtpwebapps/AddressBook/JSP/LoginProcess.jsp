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

<%
           String username = request.getParameter("uname");
		         application.setAttribute("username",username);
            String password = request.getParameter("pass");
            String s=(String)application.getAttribute("s");
            	application.setAttribute("s",s);
            System.out.println("User Id in LoginProcess.jsp  :: "+s);
            String a=new String();
            String b=new String();
            String c=new String();
            String user_id="";
           
           try {
                //String sql="select username,password from LOGIN_TBL where username='"+username+"' and password='"+password+"'";
                String sql="select username,password,user_status from LOGIN_TBL where USERNAME='"+username+"'";
				
                String url="jdbc:oracle:thin:@//localhost:1521/xe";
				String user="HR";
				String pass="HR";
				String driverName="oracle.jdbc.driver.OracleDriver";
				Class.forName(driverName);
				Connection con=DriverManager.getConnection(url,user,pass);
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    a = rs.getString(1);
                    b = rs.getString(2);
                    c = rs.getString(3);
                 
                    
                    application.setAttribute("a",a);
                    application.setAttribute("b",b);
                    }
                    if (a.equalsIgnoreCase(username) && b.equalsIgnoreCase(password) && (c.equalsIgnoreCase("FU"))) {
                        session.setAttribute("a",a);
                        session.setAttribute("b",b);                    
%>
                        <script>
                            alert("Welcome to First Time User Login");
                            location.href="FirstTimeUser.jsp";
                        </script>
<%
                    }
                    else if(a.equalsIgnoreCase(username) && b.equalsIgnoreCase(password)&& (c.equalsIgnoreCase("SU")))
                    {%>
                    	<script>
                        alert("Welcome to Home Page");
                        location.href="HomePage.jsp";
                    </script>
                    	
                    <%}
                    else 
                        {
                      
%>
                        <script>
                            alert("Sorry Invalid User or Password");
                            location.href="../index.jsp";
                        </script>
<%
                        
                }
    
                st.close();
                con.close();

            } catch (Exception e) {
              e.printStackTrace();
            }
%>


</body>
</html>
