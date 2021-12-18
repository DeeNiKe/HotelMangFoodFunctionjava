package com.food;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FoodServlet")
public class FoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fooddid = request.getParameter("foodid");
		String pin = request.getParameter("pin");
		int ppin = Integer.parseInt(pin);
		
		try {
			List<Food> foodinfo =FoodDBUtil.validate(fooddid, ppin);
			request.setAttribute("foodinfo", foodinfo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
		dis.forward(request, response);
		
		/*
		 * PrintWriter out = response.getWriter(); response.setContentType("text/html");
		 * 
		 * boolean isTrue;
		 * 
		 * isTrue = FoodDBUtil.validatetwo(fooddid, ppin);
		 * 
		 * if(isTrue==true) { //calling the getcustomer method. List<Food> foodinfo =
		 * FoodDBUtil.getfooddetails(fooddid); request.setAttribute("foodinfo",
		 * foodinfo);
		 * 
		 * RequestDispatcher diss = request.getRequestDispatcher("account.jsp");
		 * dis.forward(request, response); }else {
		 * out.println("<script type='text/javascript'>");
		 * out.println("alert('Your username or password is incorrect.');");
		 * out.println("location='foodlogin.jsp'"); out.println("</script>"); }
		 */
	}

}
