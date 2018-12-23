package com.college;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.geotest.DBConnection;

public class RaceList {
    //YunDongYBH XueHao XingMing NianJi ZhuanYe BanJi
	public static ArrayList<ArrayList<String>> getRaceList(String XiangMuBH , String XueYuanBH) {
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
		
		try {
			Connection con = DBConnection.getConnection();
			String sql = "select YunDongYBH,student_xuesheng.XueHao,XingMing,NianJi,ZhuanYe,BanJi from student_xuesheng , student_yundongy,student_baoming"
					+ " where  (student_xuesheng.XueHao=student_yundongy.XueHao) and (student_yundongy.XueHao=student_baoming.XueHao) and"
					+ " student_xuesheng.XueHao like '" + XueYuanBH + "%' and ((BaoMingXM1='"+XiangMuBH+"' and XiangMu1TG=1) or (BaoMingXM2='"+XiangMuBH+"' and XiangMu2TG=1));";
			Statement statement=con.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			while(rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("YunDongYBH"));
				l.add(rs.getString("XueHao"));
				l.add(rs.getString("XingMing"));
				l.add(rs.getString("NianJi"));
				l.add(rs.getString("ZhuanYe"));
				l.add(rs.getString("Banji"));
				list.add(l);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
		
		
	}
	
	
	
	
	
	
}
