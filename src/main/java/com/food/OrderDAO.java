package com.food;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3307/test?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "Sliit@1234";
	
	private static final String INSERT_ORDERS_SQL = "INSERT INTO order" + "  (orderid, custname, pmethod, custid, date) VALUES "
			+ " (?, ?, ?, ?, ?);";

	private static final String SELECT_ORDER_BY_ID = "select orderid,custname,pmethod,custid,date from order where orderid =?";
	private static final String SELECT_ALL_ORDERS = "select * from order";
	private static final String DELETE_ORDERS_SQL = "delete from order where orderid = ?;";
	private static final String UPDATE_ORDERS_SQL = "update order set custname = ?,pmethod= ?, custid =?, date=? where orderid = ?;";
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	//insert user method.
	public void insertOrder(Order order) throws SQLException {
		System.out.println(INSERT_ORDERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDERS_SQL)) {
			preparedStatement.setString(1, order.getOrderid());
			preparedStatement.setString(2, order.getCustname());
			preparedStatement.setString(3, order.getPmethod());
			preparedStatement.setString(4, order.getCustid());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
