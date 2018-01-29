package com.controller;

import java.io.*;

import java.util.*;

import java.sql.*;

import javax.servlet.*;

import javax.servlet.http.*;



public class DataServletNew extends HttpServlet{



  private ServletConfig config;

  //Setting JSP page

  String page="BookedInfo.jsp";



  public void init(ServletConfig config)

  throws ServletException{

 this.config=config;

 }

  public void doGet(HttpServletRequest request, HttpServletResponse response)

    throws ServletException,IOException
{

  

  PrintWriter out = response.getWriter();

  //Establish connection to MySQL database

  String connectionURL = "jdbc:mysql://bhargdbinstance.ctvrfnfyau4h.us-east-2.rds.amazonaws.com:3306/customers";

  Connection connection
= null;

  ResultSet rs;

  response.setContentType("text/html");

  List dataList= new ArrayList(); 

  try {

 // Load the database driver

  Class.forName("com.mysql.jdbc.Driver");

  // Get a Connection to the database

  connection = DriverManager.getConnection(connectionURL, "dbinstancebharg", "rubygem*05"); 

  //Select the data from the database

  String sql = "select * from room";

  Statement s = connection.createStatement();

  s.executeQuery (sql);

  rs = s.getResultSet();

  while (rs.next ()){

  //Add records into data list

  dataList.add(rs.getInt("roomid"));

  dataList.add(rs.getString("username"));
  dataList.add(rs.getString("group_name"));
  dataList.add(rs.getString("course"));
  dataList.add(rs.getInt("duration"));
  dataList.add(rs.getString("roomnum"));
  dataList.add(rs.getString("instructor"));

  }

  rs.close ();

  s.close ();

  }catch(Exception e){

  System.out.println("Exception is ;"+e);

  }

  request.setAttribute("newdata",dataList);

  //Dispatching request

  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

  if (dispatcher != null){

  dispatcher.forward(request, response);

  } 

  }

}