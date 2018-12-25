package com.ChaKanSaiCheng;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.geotest.DBConnection;

public class ChaKanGeRenXiangMu {
	public static ArrayList<ArrayList<String>>	viewPersonalItems(String StudentID) { // ��ȡ����
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
		String driverName = "com.mysql.cj.jdbc.Driver";
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
//		String url = "jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
//		String un = "root";
//		String pw = "123456";
		Connection con;
		try {
			con = DBConnection.getConnection();
			String sql = "select item_saicheng.XiangMuBH,item_xiangmu.XiangMuMC,item_saicheng.YunDongYBH,student_xuesheng.XingMing,item_saicheng.ZuBie,item_saicheng.XuHao,item_xiangmu.BiSaiSJ,item_xiangmu.BiSaiDD \r\n" + 
					"from item_saicheng,item_xiangmu,student_yundongy,student_xuesheng\r\n" + 
					"		where item_xiangmu.XiangMuBH=item_saicheng.XiangMuBH and item_saicheng.YunDongYBH=student_yundongy.YunDongYBH and student_yundongy.XueHao=student_xuesheng.XueHao and "+StudentID+"=student_yundongy.XueHao\r\n" + 
					"					order by item_xiangmu.BiSaiSJ";
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("XiangMuBH"));
				l.add(rs.getString("XiangMuMC"));
				l.add(rs.getString("YunDongYBH"));
				l.add(rs.getString("XingMing"));
				l.add(rs.getString("ZuBie"));
				l.add(rs.getString("XuHao"));
				l.add(rs.getString("BiSaiSj"));
				l.add(rs.getString("BiSaiDD"));
				list.add(l);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static ArrayList<ArrayList<String>>	getInformation(String StudentID) {
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
		Connection con;
		try {
			con = DBConnection.getConnection();
			String sql = "select * from college_xueyuan,student_xuesheng,student_yundongy where "
					+ "(student_xuesheng.XueYuan=college_xueyuan.XueYuanBH) and (student_xuesheng.XueHao=student_yundongy.XueHao) "
					+ "and student_xuesheng.XueHao= '"+StudentID+"'";
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("XueYuanMC"));
				l.add(rs.getString("ZhuanYe"));
				l.add(rs.getString("NianJi"));
				l.add(rs.getString("YunDongYBH"));
				l.add(rs.getString("XueHao"));
				l.add(rs.getString("XingMing"));
				list.add(l);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
