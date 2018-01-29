<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>
<title> Book a Study Room </title>

<style>
table, th, td {
    border: 1px solid black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="menus">
<h1> Select a room from the seat map</h1>
</div>

</br>
</br>

<table style="width:100%">
  <tr>
    <th>Seat Map</th>
    
  </tr>
  <tr>
    <td>a1</td>
    <td>a2</td> 
    <td>a3</td>
  </tr>
  <tr>
    <td>a4</td>
    <td>a5</td> 
    <td>a6</td>
  </tr>
</table>
</br>
</br>

 
<form name="form" action="<%=request.getContextPath()%>/Room" method="get">
<h3>Enter the details to book a room</h3>
<table align="center">
 
 <tr>
<td>User name</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>Group name</td>
<td><input type="text" name="group_name" /></td>
</tr>
<tr>
<td>Course</td>
<td><input type="text" name="course" /></td>
</tr>
<tr>
<td>Duration</td>
<td><input type="text" name="duration" /></td>
</tr>
<tr>
<td>Room number</td>
<td><input type="text" name="roomnum" /></td>
</tr>
<tr>
<td>Instructor</td>
<td><input type="text" name="instructor" /></td>
</tr>


<tr>
<td></td>
<td><input type="submit" value="Book"></input><input type="reset" value="Reset"></input></td>
</tr>
</table>
</form>



</body>
</html>

