package com.example.pp4_jspcrud;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
	public static Connection getConnection(){
		Connection conn = null;
		try{
			Class.forName("org.mariadb.jdbc.Driver");
//	        con= DriverManager.getConnection("jdbc:mariadb://walab.handong.edu:3306/p233_22200565","p233_22200565","Zae0ah");
			conn = DriverManager.getConnection("jdbc:mariadb://walab.handong.edu:3306/p233_22200565","p233_22200565","Zae0ah");
		}catch(Exception e){
			System.out.println(e);
		}
		return conn;
	}

	public static void main(String ars[]) {
		Connection conn = getConnection();
		if(conn != null)
			System.out.println("DB 연결됨 !");
		else
			System.out.println("DB 연결중 오류 !");
	}
}