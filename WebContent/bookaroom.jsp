<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>

<title>Book a study room </title>

</head>
<body>
<form name="form" action="<%=request.getContextPath()%>
/LoginServlet" method="post">

       
            
           

<div class="menus">
  <h1>Bhat's Library</h1>
</div>

<div class="applyall">
  <div class="menu">
  <div class="menuitem" ><a href="Login.jsp">Home </a></div>
    <div class="menuitem"><a href= "aboutus.jsp">About Us</a></div>
    <div class="menuitem"><a href= "TandC.jsp">Terms and conditions</a></div>
    <div class="menuitem"><a href= "support.jsp">Support</a></div>
    <div class="menuitem"><a href= "forums.jsp">Forums</a></div>
   
  </div>

  <div class="main">
    <h2>Study Room</h2>
    <p>login to book a study room</p>
 
<table align="center">
 
<tr>
<td>Username</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" /></td>
</tr>
<tr>
<td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Login"></input><input type="reset" value="Reset"></input></td>
</tr>
</table>
</form>



  </div>


  <div class="right">
  	<h5><a href= "Register.jsp">Register Now</a></h5>
  </div>
</div>

<div class="copy"> © copyright bhatslibrary.com</div>


</body>
</html>


