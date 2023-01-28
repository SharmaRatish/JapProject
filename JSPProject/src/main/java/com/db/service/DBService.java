package com.db.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBService {
	private static Connection conn=null;
	static{
		try {
			String url="jdbc:mysql://localhost:3306/pgdac_sep20222";
			String user="root";
			String password="syso";
			Class.forName("com.mysql.cj.jdbc.Driver");		
			conn=DriverManager.getConnection(url,user,password);
			if(conn!=null) {
				System.out.println("Connection is done");			
			}
			else {
				System.out.println("connection is not done");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			
		}
		
	}
	public static Connection getConnection() {
		return conn;
	}

}