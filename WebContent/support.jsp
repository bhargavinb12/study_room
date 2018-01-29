<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles/main1.css" type="text/css"/>

<title>Support</title>
</head>
<body>
    
           

<div class="menus">
  <h1>Support</h1>
</div>

<div class="applyall">
  <div class="menu">
 
    <div class="menuitem" ><a href="Login.jsp">Home </a></div>
     <div class="menuitem"><a href= "aboutus.jsp">About Us</a></div>
    <div class="menuitem"><a href= "bookaroom.jsp">Book a study room</a></div>
    <div class="menuitem"><a href= "TandC.jsp">Terms and conditions</a></div>
    <div class="menuitem"><a href= "forums.jsp">Forums</a></div>
  </div>

  <div class="main">
  <center><caption><h2>Send New E-mail</h2></caption></center> 
    </br>
</br>
    
    <form name="form" action="<%=request.getContextPath()%>
/EmailSendingServlet" method="post">
        <table border="0" width="35%" align="center">
            
            <tr>
                <td width="50%">Recipient address </td>
                <td><input type="text" name="recipient" size="50"/></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" size="50"/></td>
            </tr>
            <tr>
                <td>Content </td>
                <td><textarea rows="10" cols="39" name="content"></textarea> </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Send"/></td>
            </tr>
        </table>
         
    </form>
    
    
        
    
  </div>


  <div class="right">
  	<h5><a href= "Register.jsp">Register Now</a></h5>
  </div>
</div>

<div class="copy"> &copy; copyright bhatslibrary.com</div>

</body>
            
            
   
</body>
</html>

