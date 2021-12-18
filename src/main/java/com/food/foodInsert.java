package com.food;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/foodInsert")
public class foodInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String foodid = request.getParameter("foodid");
		String foodname = request.getParameter("foodname");
		String type = request.getParameter("type");
		double unitprice = Double.parseDouble(request.getParameter("unitprice"));
		int qty = Integer.parseInt(request.getParameter("qty"));
		String brand = request.getParameter("brand");
		int pin = Integer.parseInt(request.getParameter("pin"));
		
		//double unitprice2 = Double.parseDouble(unitprice);
		//int qty2 = Integer.parseInt(qty);
		//int pin2 = Integer.parseInt(pin);
		
		boolean isTrue = FoodDBUtil.insertFood(foodid, foodname, type, unitprice, qty, brand, pin);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
