<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>

<title>Register</title>
<script> 
function validate()
{ 
 var fullname = document.form.fullname.value;
 var email = document.form.email.value;
 var username = document.form.username.value; 
 var password = document.form.password.value;
 var conpassword= document.form.conpassword.value;
 
 if (fullname==null || fullname=="")
 { 
 alert("Full Name can't be blank"); 
 return false; 
 }
 else if (email==null || email=="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if (username==null || username=="")
 { 
 alert("Username can't be blank"); 
 return false; 
 }
 else if(password.length<6)
 { 
 alert("Password must be at least 6 characters long."); 
 return false; 
 } 
 else if (password!=conpassword)
 { 
 alert("Confirm Password should match with the Password"); 
 return false; 
 } 
 } 
</script> 
</head>
<body>
<div class="menus">
  <h1>Register</h1>
</div>

<div class="applyall">
  <div class="menu">
 
    <div class="menuitem" ><a href="Login.jsp">Home </a></div>
    <div class="menuitem"><a href= "bookaroom.jsp">Book a study room</a></div>
    <div class="menuitem"><a href= "TandC.jsp">Terms and conditions</a></div>
    <div class="menuitem"><a href= "support.jsp">Support</a></div>
    <div class="menuitem"><a href= "forums.jsp">Forums</a></div>
  </div>

  <div class="main">
    <h2>Study Room</h2>
<p>Registration Form </p>

<form name="form" action="<%=request.getContextPath()%>/RegisterServlet" method="post" 
onsubmit="return validate()">
<table align="center">
 <tr>
 <td>Full Name</td>
 <td><input type="text" name="fullname" /></td>
 </tr>
 <tr>
 <td>Email</td>
 <td><input type="text" name="email" /></td>
 </tr>
 <tr>
 <td>User name</td>
 <td><input type="text" name="username" /></td>
 </tr>
 <tr>
 <td>Password</td>
 <td><input type="password" name="password" /></td>
 </tr>
 <tr>
 <td>Confirm Password</td>
 <td><input type="password" name="conpassword" /></td>
 </tr>
 <tr>
 <td>Role</td>
 <td><input type="text" name="role" /></td>
 </tr>
 <tr>
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Register"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
 </div>


  <div class="right">
  	<h5><a href= "Login.jsp">Login</a></h5>
  </div>
</div>

<div class="copy"> &copy; copyright bhatslibrary.com</div>
 
</body>
</html>