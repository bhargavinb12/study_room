<%@page language="java" session="true" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<form name="form" action="TextServlet" method="post" >
Output:<br />
  <textarea name="output" style="width:100%" rows="40"  value="${result}" />
  </textarea><br />
  <input type="submit" name="submit" value="Submit" />
</form>