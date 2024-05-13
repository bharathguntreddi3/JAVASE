<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
		a{text-decoration:none;}
</style>
<script>
	    function fun23()
		   {
		   var date=new Date();
		   var hrs=date.getHours();
		   var min=date.getMinutes();
		   var sec=date.getSeconds();

		   var days=date.getDate();
		   var mon=date.getMonth()+1;
		   var year=date.getYear();
          
            document.getElementById("div6").innerHTML=days+"-"+mon+"-"+year;

		   min=checkTime(min);
		   sec=checkTime(sec);
		   
		   document.getElementById("div5").innerHTML=hrs+":"+min+":"+sec;
		      t=setTimeout('fun23()',500);
		   }
		   function checkTime(i)
		   {
		   if(i<10)
		   {
		   i="0" + i;
		   }
		  return i;
		   }
		   </script>
		   <style type="text/css">
		   	a{text-decoration:none;}
		   </style>
</head>
<body bgcolor="#008B8B" onload="fun23()">
<%String username=(String)application.getAttribute("username"); %>
<table  border="0" align="left"><tr><td><font size="6" color="white" align="center"><b><img src="../IMAGES/in11111dex.jpg"></img></b></font>
	</td></tr></table>
	  <table  border="0" align="right">
		   <tr>
		     <td><font color="white" face="Bradley Hand ITC"><b>Date:</b></font></td>
			 <td>
  					<center><font color="White" size=3><b><div id="div6"></div></b></font></center>
             </td>
          </tr>
		  <tr>
		    <td><font color="white" face="Bradley Hand ITC"><b>Time:</b></font></td>
			<td>
  					<center><font color="white" size=3><b><div id="div5"></div></b></font></center>
            </td>
          </tr>
          </table><br><br><br>
          <table  border="0" align="right">
       <tr >
          	<td>
				<font size="3" color="yellow" face="Bradley Hand ITC"><b>Logged in as :: </b></font><font size="3" color="yellow"><b><%=username%></b></font> | <a href=""><font size="3" color="white" face="Bradley Hand ITC"><b><u>Settings</u></b></font></a> | <a href="../index.jsp" target="_parent"><font size="3" color="white" face="Bradley Hand ITC"><b><u>Logout</u></b></font></</a>
			</td>
			</tr>
      </table><br/>
	<table width="100%">
	<tr ><td bgcolor="white">
			<hr></hr>
	</td></tr>
</table>
	
</body>
</html>