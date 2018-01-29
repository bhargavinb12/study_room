package com.controller;

import java.io.*;

import java.util.*;

import java.sql.*;

import javax.servlet.*;

import javax.servlet.http.*;



public class AllForums extends HttpServlet{



  private ServletConfig config;

  //Setting JSP page

  String page="AllPost.jsp";



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

  List forumList= new ArrayList(); 

  try {

 // Load the database driver

  Class.forName("com.mysql.jdbc.Driver");

  // Get a Connection to the database

  connection = DriverManager.getConnection(connectionURL, "dbinstancebharg", "rubygem*05"); 

  //Select the data from the database

  String sql = "select * from forum";

  Statement s = connection.createStatement();

  s.executeQuery (sql);

  rs = s.getResultSet();

  while (rs.next ()){

  //Add records into data list

 forumList.add(rs.getInt("fno"));

  forumList.add(rs.getString("user_name"));
  forumList.add(rs.getString("post_ques"));
 
  
  }

  rs.close ();

  s.close ();

  }catch(Exception e){

  System.out.println("Exception is ;"+e);

  }

  request.setAttribute("forum",forumList);

  //Dispatching request

  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

  if (dispatcher != null){

  dispatcher.forward(request, response);

  } 

  }

}

 


