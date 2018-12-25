package com.college;

import java.sql.*;
import java.util.ArrayList;

import com.geotest.DBConnection;

public class ChoosedStudent {

	public static ArrayList<ArrayList<String>> getlist (String XueYuan,String item) {
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>> ();
		String sql ="select * from student_baoming,student_xuesheng where "
				+ "student_baoming.XueHao=student_xuesheng.XueHao and "
				+ "((BaoMingXM1='"+item+"' and XiangMu1TG=1) or (BaoMingXM2='"+item+"' and XiangMu2TG=1))";
		try {
			Connection con =DBConnection.getConnection();
			Statement statement=con.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			while(rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("XueHao"));
				l.add(rs.getString("ZhuanYe"));
				l.add(rs.getString("NianJi"));
				l.add(rs.getString("Banji"));
				l.add(rs.getString("XingMing"));
				list.add(l);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
