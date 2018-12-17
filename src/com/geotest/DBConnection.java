package com.geotest;

import  java.sql.*;


public class DBConnection {
	private static String drivername="com.mysql.jdbc.Driver";
	private static String   url="jdbc:mysql://localhost:3306/sportmanager?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
	private static String  un="root";
	private static String  pw="123456";
	
	static{
		try{
			Class.forName(drivername);
		}catch(ClassNotFoundException e){
				e.printStackTrace();
		}
	}
	
	public  static  Connection  getConnection(){
		try{
			Connection conn=DriverManager.getConnection(url,un,pw);
			return conn;
		}catch(SQLException e){
				e.printStackTrace();
				return null;
		}
	}
	
	public static void free(Connection conn,Statement stmt,ResultSet rs){
		try{ 
			if(rs!=null) 
				rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(stmt!=null) 	
					stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{ 
					if(conn!=null)  
						conn.close();
				}catch(SQLException e){
					e.printStackTrace();
				}  
			}  
		}  
	}
}

