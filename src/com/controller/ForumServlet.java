package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class ForumServlet
 */
@WebServlet("/ForumServlet")

public class ForumServlet extends HttpServlet {
	
    

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		PrintWriter out = response.getWriter(); 
		response.setContentType("text/html"); 
		
		String user_name = request.getParameter("username");
		String post_ques = request.getParameter("post_ques"); 
		

		
		
		

		
		
		try{ 
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://bhargdbinstance.ctvrfnfyau4h.us-east-2.rds.amazonaws.com:3306/customers","dbinstancebharg","rubygem*05"); 
		PreparedStatement preparedStatement = (PreparedStatement) cn.prepareStatement("insert into forum values(NULL,?,?)"); 
		 preparedStatement.setString(1, user_name);
		 preparedStatement.setString(2, post_ques);
		 
		 
		 request.setAttribute("username",user_name);
		 request.setAttribute("post_ques",post_ques);
		 
		 
		 preparedStatement.executeUpdate(); 
		//out.println("Room has been booked"); 
		RequestDispatcher rd=request.getRequestDispatcher("ForumDetails.jsp"); 
		rd.forward(request, response);
		
		
		}catch(Exception e){ 
		out.println(e); 
		} 
		} 
		} 


