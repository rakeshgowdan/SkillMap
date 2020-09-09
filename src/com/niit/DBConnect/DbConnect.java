package com.niit.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	
	public static Connection DbConnector() {
	
		try {
		String url="jdbc:mysql://localhost:3306/skillmap";
		String user="root";
		String pass="root";
			
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection SucessFull");
		return con;
	}
		catch (Exception e) {
			System.out.println("Connection Error!!");
		}
		return null;
}
}
