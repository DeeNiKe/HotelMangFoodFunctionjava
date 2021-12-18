package com.food;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url = "jdbc:mysql://localhost:3307/test?useSSL=false";
	private static String username = "root";
	private static String password = "Sliit@1234";
	private static Connection con;
	
	public static Connection getConnection() {   //returning a "Connection".
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			
			
		}catch(Exception e) {
			System.out.println("Database error.");
		}
		return con;
		
	}

}
