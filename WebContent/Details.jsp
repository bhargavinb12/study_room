<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
<title>User Page</title>
</head>
<body>
<div class="menus">
<h1> <h2>User's Home</h2></h1>
</div>

Congrats <%=request.getAttribute("username") %>, your room has been successfully booked 

<h1> Room details </h1>
<table style="width:100%">
  <tr>
    <th>Room Details</th>
   
  </tr>
  <tr>
    <td>User name</td>
    <td><%=request.getAttribute("username")%></td>
    
 
    
  </tr>
  <tr>
    <td>group_name</td>
   <td> <%=request.getAttribute("group_name") %></td>
  </tr>
  <tr>
    <td>course</td>
    <td> <%=request.getAttribute("course") %></td>
  </tr>
  <tr>
    <td>duration</td>
    <td> <%=request.getAttribute("duration") %></td>
  </tr>
   <tr>
    <td>roomnum</td>
    <td><%=request.getAttribute("roomnum") %></td>
  </tr>
  <tr>
 <tr>
    <td>instructor</td>
   <td> <%=request.getAttribute("instructor")%></td>
    
  </tr>
</table>


 
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>

</body>
</html>