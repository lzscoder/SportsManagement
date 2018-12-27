package com.login;

import java.sql.*;

import com.geotest.DBConnection;

public class judgeLogin {

	public static boolean judgestudent(String username) {
		try {
			Connection con =DBConnection.getConnection();
			String sql = "SELECT ShouCiDL FROM users_xuesheng where ZhangHao='"+username+"'";
			String sql1 = "update users_xuesheng set ShouCiDL=1 where ZhangHao='"+username+"'";
			Statement statement=con.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			if(rs.next()) {
				if("0".equals(rs.getString("ShouCiDL"))) {
					PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(sql1);
					ptmt1.execute();
					return true;
				}else {
					return false;
				}
			}
		}catch(SQLException e) {
			
		}
		return false;
	}
	
	public static boolean judgecollege(String username) {
		try {
			Connection con =DBConnection.getConnection();
			String sql = "SELECT ShouCiDL FROM users_xueyuan where ZhangHao='"+username+"'";
			String sql1 = "update users_xueyuan set ShouCiDL=1 where ZhangHao='"+username+"'";
			Statement statement=con.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			if(rs.next()) {
				if("0".equals(rs.getString("ShouCiDL"))) {
					PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(sql1);
					ptmt1.execute();
					return true;
				}else {
					return false;
				}
			}
		}catch(SQLException e) {
			
		}
		return false;
	}
	
	public static boolean judgexuexiao(String username) {
		try {
			Connection con =DBConnection.getConnection();
			String sql = "SELECT ShouCiDL FROM users_xuexiao where ZhangHao='"+username+"'";
			String sql1 = "update users_xuexiao set ShouCiDL=1 where ZhangHao='"+username+"'";
			Statement statement=con.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			if(rs.next()) {
				if("0".equals(rs.getString("ShouCiDL"))) {
					PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(sql1);
					ptmt1.execute();
					return true;
				}else {
					return false;
				}
			}
		}catch(SQLException e) {
			
		}
		return false;
	}
}
