package com.controller;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DBConnection;



public class Room extends HttpServlet {
	
    

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		PrintWriter out = response.getWriter(); 
		response.setContentType("text/html"); 
		
		String user_name = request.getParameter("username");
		String group_name = request.getParameter("group_name"); 
		String course = request.getParameter("course"); 
		String duration = request.getParameter("duration"); 
		String roomnum = request.getParameter("roomnum"); 
		String instructor = request.getParameter("instructor"); 
		

		
		
		int n=0;  
		try{n=Integer.parseInt(duration);}catch(Exception e){} 

		
		
		try{ 
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection cn = DriverManager.getConnection("jdbc:mysql://bhargdbinstance.ctvrfnfyau4h.us-east-2.rds.amazonaws.com:3306/customers","dbinstancebharg","rubygem*05"); 
		PreparedStatement preparedStatement = cn.prepareStatement("insert into room values(NULL,?,?,?,?,?,?)"); 
		 preparedStatement.setString(1, user_name);
		 preparedStatement.setString(2, group_name);
		 preparedStatement.setString(3, course);
		 preparedStatement.setString(4, duration);
		 preparedStatement.setString(5, roomnum);
		 preparedStatement.setString(6, instructor);
		 
		 request.setAttribute("username",user_name);
		 request.setAttribute("group_name",group_name);
		 request.setAttribute("course", course);
		 request.setAttribute("duration", duration);
		 request.setAttribute("roomnum", roomnum);
		 request.setAttribute("instructor", instructor);
		 
		 preparedStatement.executeUpdate(); 
		//out.println("Room has been booked"); 
		RequestDispatcher rd=request.getRequestDispatcher("Details.jsp"); 
		rd.forward(request, response);
		
		
		}catch(Exception e){ 
		out.println(e); 
		} 
		} 
		} 






