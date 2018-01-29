<%@page language="java" import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>
<title>Data Page</title>
</head>
<body> 
<div class="menus">
<h1> Users' Details</h1>
</div>
<center>
</br>
</br>
<table border="1" width="303">
<tr>
<td width="119"><b>slno</b></td>
<td width="119"><b>fullname</b></td>
<td width="119"><b>email</b></td>
<td width="119"><b>Username</b></td>
<td width="119"><b>Password</b></td>
<td width="119"><b>Role</b></td>
</tr>
<%Iterator itr;%>
<% List data= (List)request.getAttribute("data");
for (itr=data.iterator(); itr.hasNext(); )
{
%>
<tr>
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