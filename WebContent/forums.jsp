<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>
<title> Book a Study Room </title>


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="menus">
<h1> Forums </h1>
</div>

</br>
</br>

<div class="applyall">
  <div class="menu">
 
    <div class="menuitem" ><a href="Login.jsp">Home </a></div>
     <div class="menuitem"><a href= "aboutus.jsp">About Us</a></div>
    <div class="menuitem"><a href= "bookaroom.jsp">Book a study room</a></div>
    <div class="menuitem"><a href= "TandC.jsp">Terms and conditions</a></div>
    <div class="menuitem"><a href= "support.jsp">Support</a></div>
  </div>

 
<form name="form" action="<%=request.getContextPath()%>/ForumServlet" method="get">
<center><h3>Post your question here</h3></center>
<table align="center">
<tr>
<td>User name</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>Post your question</td>
<td><input type="textarea" name="post_ques" /></td>
</tr>



<tr>
<td></td>
<td><input type="submit" value="Post"></input><input type="reset" value="Reset"></input></td>
</tr>
</table>
</form>


</body>
</html>

