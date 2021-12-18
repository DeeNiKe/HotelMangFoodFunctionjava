package com.food;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateFoodServlet")
public class UpdateFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String foodid = request.getParameter("foodid");
		String foodname = request.getParameter("foodname");
		String type = request.getParameter("type");
		double unitprice = Double.parseDouble(request.getParameter("unitprice"));
		int qty = Integer.parseInt(request.getParameter("qty"));
		String brand = request.getParameter("brand");
		int pin = Integer.parseInt(request.getParameter("pin"));
		
		boolean isTrue;
		isTrue = FoodDBUtil.updatefood(foodid, foodname, type, unitprice, qty, brand, pin);
		
		if(isTrue == true) {
			
			List<Food> foodinfo = FoodDBUtil.getfooddetails(foodid);
			request.setAttribute("foodinfo", foodinfo);
			
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
