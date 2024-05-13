<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>First Time Login User</title>
<script type="text/javascript">

function first()
{
	var dd=document.getElementById("dd");
	var u=document.getElementById("user").value;
	
	var opswd=document.getElementById("oldpswd").value;
	var npswd=document.getElementById("newpswd").value;
	var cfpswd=document.getElementById("confpswd").value;
	if(opswd=="" && npswd=="" && cfpswd=="")
	{
		dd.innerHTML="Please Enter old,new and conf password....!";
	}
	else if(opswd=="")
	{
		dd.innerHTML="Please Enter Old Password....!";		
	}
	else if(npswd=="")
	{
		dd.innerHTML="Please Enter new Password....!";
	}
	else if(cfpswd=="")
	{
		dd.innerHTML="Please Enter confirm Password....!";
	}
	else if(npswd!=cfpswd)
	{
		dd.innerHTML="Not matched New Password & Confirm Password...! ";
	}
	
	else
	{
	   dd.innerHTML="";
		document.forms[0].action="LoginUpdate.jsp";
		document.forms[0].submit();
	}
}	

</script>
</head>
	<%
		String uname=(String)application.getAttribute("a");
		System.out.println(uname);
		
		String s=(String)application.getAttribute("s");
		System.out.println(s);
		application.setAttribute("s",s);
	%>
<body bgcolor="#008B8B">
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
</table><br/><br/><br/></br>

<center><font color="white" face="Bradley Hand ITC" size="6"><b>First Time User</b></font></center></br>
		<table align="center">
			<tr>
				<td><font color="white" face="Bradley Hand ITC" size="4"><b>UserName</b></font></td>
				<td><input type="text" name="user" value=<%=uname%> disabled></td>				
			</tr>
			<tr>
				<td><font color="white" face="Bradley Hand ITC" size="4"><b>Old Password</b></font></td>
				<td><input type="password" name="oldpswd" id="oldpswd" value=""></td>
			</tr>
			<tr>
				<td><font color="white" face="Bradley Hand ITC" size="4"><b>New Password</b></font></td>
				<td><input type="password" name="newpswd" id="newpswd" value=""></td>
			</tr>	
			<tr>
				<td><font color="white" face="Bradley Hand ITC" size="4"><b>Confirm Password</b></font></td>
				<td><input type="password" name="confpswd" id="confpswd" value=""></td>
			</tr>	
		</table><br/>
		</form>
		<table align="center">
				<tr>
					<td><input type="submit" value=" SUBMIT " onclick="first()"></td>
					<td><input type="submit" value=" CANCEL " onclick="history.back()" ></td>
				</tr>
		</table>

		<center>
			<div id="dd" style="color:white"></div>
		</center> 
		
</body>
</html>