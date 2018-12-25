package com.sportproject;

import com.geotest.DBConnection;
import java.sql.*;
import java.util.ArrayList;


public class ChooseInCollege {

	public static ArrayList<ArrayList<String>>getlist(String XiangMuBH,String UserName) {
		ArrayList<ArrayList<String>> list= new ArrayList<ArrayList<String>>();
		try {
			Connection con = DBConnection.getConnection();
			String sql1="select XueHao,XingMing,ZhuanYe,NianJi,BanJi from student_xuesheng"
					+" where XueHao IN (select XueHao from student_BaoMing where (BaoMingXM1='"
					+XiangMuBH+"' or BaoMingXM2 = '"+XiangMuBH+"') and XueHao like  '"+UserName+"%')";
			Statement statement=con.createStatement();
			ResultSet rs=statement.executeQuery(sql1);
			while(rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("XueHao"));
				l.add(rs.getString("XingMing"));
				l.add(rs.getString("NianJi"));
				l.add(rs.getString("Banji"));
				list.add(l);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public static void chooseSport(String XiangMuBH,String XueHao) {
		String sql1 = "update student_baoming set XiangMu1TG=? where XueHao=? and BaoMingXM1=?";
		String sql2 = "update student_baoming set XiangMu2TG=? where XueHao=? and BaoMingXM2=?";
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ptmt = (PreparedStatement) con.prepareStatement(sql1);
			ptmt.setString(1, "1");
			ptmt.setString(2, XueHao);
			ptmt.setString(3, XiangMuBH);
			ptmt.execute();
			ptmt = (PreparedStatement) con.prepareStatement(sql2);
			ptmt.setString(1, "1");
			ptmt.setString(2, XueHao);
			ptmt.setString(3, XiangMuBH);
			ptmt.execute();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void deletechoosed (String XiangMuBH,String choosedXueS) {
		String sql1 = "update student_baoming set XiangMu1TG=? where XueHao=? and BaoMingXM1=?";
		String sql2 = "update student_baoming set XiangMu2TG=? where XueHao=? and BaoMingXM2=?";
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(sql1);
			ptmt1.setString(1, "0");
			ptmt1.setString(2, choosedXueS);
			ptmt1.setString(3, XiangMuBH);
			ptmt1.execute();
			ptmt1 = (PreparedStatement) con.prepareStatement(sql2);
			ptmt1.setString(1, "0");
			ptmt1.setString(2, choosedXueS);
			ptmt1.setString(3, XiangMuBH);
			ptmt1.execute();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
