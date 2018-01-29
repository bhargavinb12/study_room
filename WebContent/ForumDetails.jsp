<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>

<title>User Page</title>
</head>
<body>
<div class="menus">
<h1> <h2>User's Home</h2></h1>
</div>

 <%=request.getAttribute("username") %>, your question has been successfully posted

<h1> View your post </h1>
<table style="width:100%">
  <tr>
    <th></th>
   
  </tr>
  <tr>
    <td>User name</td>
    <td><%=request.getAttribute("username")%></td>
    
 
    
  </tr>
  <tr>
    <td>post_ques</td>
   <td> <%=request.getAttribute("post_ques") %></td>
  </tr>
  
  
  
</table>


 <div style="text-align: right"><a href="Login.jsp">Home</a></div>
</body>
</html>