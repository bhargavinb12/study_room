package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBConnection {
 
public static Connection createConnection()
{
Connection con = null;

String url = "jdbc:mysql://bhargdbinstance.ctvrfnfyau4h.us-east-2.rds.amazonaws.com:3306/customers";
String username = "dbinstancebharg";;
String password = "rubygem*05";


try
{
try
{
Class.forName("com.mysql.jdbc.Driver");
}
catch (ClassNotFoundException e)
{
e.printStackTrace();
}
con = DriverManager.getConnection(url, username, password);
System.out.println("Post establishing a DB connection - "+con);
}
catch (Exception e)
{
e.printStackTrace();
}
 
return con;
}
}
 