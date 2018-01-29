<%@page language="java" import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>
<title>Data Page</title>
</head>
<body> 
<div class="menus">
<h1>Forums</h1>
</div>
<center>
</br>
</br>
<table border="1" width="303">
<tr>
<td width="119"><b>fno</b></td>
<td width="119"><b>username</b></td>
<td width="119"><b>post_ques</b></td>

</tr>
<%Iterator itr;%>
<% List forum= (List)request.getAttribute("forum");
for (itr=forum.iterator(); itr.hasNext(); )
{
%>
<tr>
<td width="119"><%=itr.next()%></td>
<td width="119"><%=itr.next()%></td>
<td width="119"><%=itr.next()%></td>

</tr>
<%}%>
</table>
</center>
</body>
</html>

