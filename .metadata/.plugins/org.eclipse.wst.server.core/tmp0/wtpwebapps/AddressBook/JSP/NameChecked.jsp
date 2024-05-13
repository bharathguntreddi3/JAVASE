<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 
	String sql="";
	String user="",pass="",url="",DriverName="";
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	StringBuffer responseXML=new StringBuffer();
	String name="",Name="";	


	try {
			
			Name=request.getParameter("name");
			if(Name==null)
        	{
               		Name="";
        	}
	        else if(Name.equalsIgnoreCase("null"))
       		{
                	Name="";
        	}
	       
			
			System.out.println("The Name of customer is ::: "+Name);          
          	sql="SELECT NAME FROM USER_DETAILS_TBL";
          	
          	url="jdbc:oracle:thin:@//172.20.0.5:1521/cisdb";
			user="cisuat";
			pass="kbl123";
			DriverName="oracle.jdbc.driver.OracleDriver";
			Class.forName(DriverName);
			con=DriverManager.getConnection(url,user,pass);
			
			st = con.createStatement();
            rs = st.executeQuery(sql);
 			responseXML.append("<xml>");
            while (rs.next()) 
            {
            	name=rs.getString(1);
            	responseXML.append("<NAME>"+name+"</NAME>");
            }
            System.out.println("the name from DB is ::: "+name);
            rs.close();
            responseXML.append("</xml>");
				response.setContentType("text/xml");
				response.setHeader("Cache-Control" , "no-cache");
			
			PrintWriter pw = null;
			pw =  new PrintWriter(response.getWriter());
			pw.println(responseXML.toString());
			pw.flush();
			pw.close();
			System.out.println("the response send back to nameChecked.jsp"+responseXML.toString());
		}
		catch (Exception e)
		 {
              e.printStackTrace();
            }

%>