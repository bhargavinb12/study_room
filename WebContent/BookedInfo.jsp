<%@page language="java" import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>
<title>Details of the Booked Room </title>
</head>
<body> 
<div class="menus">
<h1> Details of  Booked Rooms</h1>
</div>
</br>
</br>
<center>
<table border="1" width="303">
<tr>
<td width="119"><b>Room id</b></td>
<td width="119"><b>User name</b></td>
<td width="119"><b>Group name</b></td>
<td width="119"><b>Course</b></td>
<td width="119"><b>Duration</b></td>
<td width="119"><b>Room number</b></td>
<td width="119"><b>Instructor</b></td>
</tr>
<%Iterator itr;%>
<% List newdata= (List)request.getAttribute("newdata");
for (itr=newdata.iterator(); itr.hasNext(); )
{
%>
<tr>
<td width="119"><%=itr.next()%></td>
<td width="119"><%=itr.next()%></td>
<td width="119"><%=itr.next()%></td>
<td width="119"><%=itr.next()%></td>
<td width="119"><%=itr.next()%></td>
<td width="119"><%=itr.next()%></td>
<td width="119"><%=itr.next()%></td>
</tr>
<%}%>
</table>
</center>
</body>
</html>