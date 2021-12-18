package com.food;

public class Order {
	private String orderid;
	private String custname;
	private String pmethod;
	private String custid;
	private String date;
	public Order(String orderid, String custname, String pmethod, String custid, String date) {
		super();
		this.orderid = orderid;
		this.custname = custname;
		this.pmethod = pmethod;
		this.custid = custid;
		this.date = date;
	}
	public String getOrderid() {
		return orderid;
	}
	public String getCustname() {
		return custname;
	}
	public String getPmethod() {
		return pmethod;
	}
	public String getCustid() {
		return custid;
	}
	public String getDate() {
		return date;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public void setPmethod(String pmethod) {
		this.pmethod = pmethod;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	

}
