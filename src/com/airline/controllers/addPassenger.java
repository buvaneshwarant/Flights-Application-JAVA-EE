package com.airline.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addPassenger
 */
@WebServlet("/addPassenger")
public class addPassenger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addPassenger() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/add_Passenger.jsp");
		
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("first-name");
		System.out.println("firstName: " + firstName);
		
		String lastName = request.getParameter("last-name");
		
		String dob_raw = request.getParameter("dob");
		
		String dobArray[] = dob_raw.split("\\/");
		
		String month = dobArray[0];
		String day = dobArray[1];
		String year = dobArray[2];
		
		Calendar cal = Calendar.getInstance();
		
		cal.set(Calendar.YEAR, Integer.parseInt(year));
		cal.set(Calendar.MONTH, Integer.parseInt(month));
		cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(day));		
		
		Date dob = cal.getTime();
		
		String gender = request.getParameter("gender");
		
	}

}
