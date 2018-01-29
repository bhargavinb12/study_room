package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TextServlet
 */
@WebServlet("/TextServlet")
public class TextServlet extends HttpServlet {

public void doPost(HttpServletRequest request, HttpServletResponse response){
    try
    {
    request.setAttribute("result","output text from servlet");

    String nextJSP = "/forums.jsp"; 
    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP); 
    dispatcher.forward(request,response);
    }
    catch (Exception e)
    {
    }
}
}