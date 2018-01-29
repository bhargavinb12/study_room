<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>

<title>Admin's page</title>
</head>
<body>
    
           

<div class="menus">
  <h1>Welcome <%=request.getAttribute("userName") %></h1>
</div>

<div class="applyall">
  <div class="menu">
 
    
    <div class="menuitem" ><a href="<%=request.getContextPath()%>/DataServlet">View Users' Details</a></div>
    <div class="menuitem"><a href="<%=request.getContextPath()%>/DataServletNew">View Booked Room Details</a></div> 
     <div class="menuitem"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
   
   
  </div>

  <div class="main">
    <h2>Admin's page</h2>
    
    
        
    
  </div>


</div>

<div class="copy"> &copy; copyright bhatslibrary.com</div>

</body>
            
            
   

</html>
