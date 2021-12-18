package com.food;

public class Food {
	private String foodid;
	private String foodname;
	private String type;
	private double unitprice;
	private int qty;
	private String brand;
	private int pin;
	
	public Food(String foodid, String foodname, String type, double unitprice, int qty, String brand, int pin) {
		
		this.foodid = foodid;
		this.foodname = foodname;
		this.type = type;
		this.unitprice = unitprice;
		this.qty = qty;
		this.brand = brand;
		this.pin = pin;
	}

	public String getFoodid() {
		return foodid;
	}

	public String getFoodname() {
		return foodname;
	}

	public String getType() {
		return type;
	}

	public double getUnitprice() {
		return unitprice;
	}

	public int getQty() {
		return qty;
	}

	public String getBrand() {
		return brand;
	}

	public int getPin() {
		return pin;
	}

	
	

}
