package com.food;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FoodDBUtil {
	
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		private static boolean isSuccess;
	
	public static List<Food> validate(String foodid,int pin){
		
		ArrayList<Food> fone = new ArrayList<>();
		
		//validate.
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from food where foodid='"+foodid+"' and pin='"+pin+"'";  ////jjj****
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String foodidd = rs.getString(1);
				String foodname = rs.getString(2);
				String type = rs.getString(3);
				double unitprice = rs.getDouble(4);
				int qty = rs.getInt(5);
				String brand = rs.getString(6);
				int pinn = rs.getInt(7);
				
				Food food = new Food(foodidd,foodname,type,unitprice,qty,brand,pinn);
				
				fone.add(food);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return fone;
		
	}
	
	// insert method.
	public static boolean insertFood(String foodid,String foodname,String type,double unitprice,int qty,String brand,int pin) {
		boolean isSuccess = false;

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into food values('"+foodid+"','"+foodname+"','"+type+"','"+unitprice+"','"+qty+"','"+brand+"','"+pin+"')";
            int var = stmt.executeUpdate(sql);	
            
            if(var>0) {
            	isSuccess = true;
            }else {
            	isSuccess = false;
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//update method.
	
	public static boolean updatefood(String foodid,String foodname,String type,double unitprice,int qty,String brand,int pin) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update food set foodname='"+foodname+"',type='"+type+"',unitprice='"+unitprice+"',qty='"+qty+"',brand='"+brand+"',pin='"+pin+"'"
					+"where foodid='"+foodid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//selecting data from database. data retreive.
	
	public static List<Food> getfooddetails(String foodid){
		
		ArrayList<Food> fd = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from food where foodid='"+foodid+"'";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				String nfoodid = rs.getString(1);
				String foodname = rs.getString(2);
				String type = rs.getString(3);
				double unitprice = rs.getDouble(4);
				int qty = rs.getInt(5);
				String brand = rs.getString(6);
				int pin = rs.getInt(7);
				
				Food food = new Food(nfoodid,foodname,type,unitprice,qty,brand,pin);
				fd.add(food);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return fd;			
	}
	
	//delete method.
	
	public static boolean deletefood(String foodid) {
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from food where foodid='"+foodid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//another validate method. returning boolean val.
	
	public static boolean validatetwo(String foodid,int pin) {
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from food where foodid='"+foodid+"' and pin='"+pin+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}

}
