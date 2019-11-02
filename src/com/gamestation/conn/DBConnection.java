package com.gamestation.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public DBConnection() {
		
	}
	
	public static Connection getDBconnection() throws ClassNotFoundException, SQLException{
		
		//Server connection parameters
		String url = "jdbc:mysql://localhost:3306/gamestation";
		String username = "root";
		String password = null;
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, username, password);
		
		return conn;
	}
}
