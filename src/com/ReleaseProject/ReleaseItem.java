package com.ReleaseProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.geotest.DBConnection;

public class ReleaseItem {
	public static ArrayList<ArrayList<String>> getItem() { // ��ȡ������Ŀ
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
			String sql = "select * from item_xiangmu";
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("XiangMuBH"));
				l.add(rs.getString("XiangMuMC"));
				l.add(rs.getString("XingBieXZ"));
				l.add(rs.getString("XiaoJL"));
				l.add(rs.getString("ZuiDaRL"));
				l.add(rs.getString("YiBaoMRS"));
				l.add(rs.getString("BiSaiSJ"));
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

	public static void releaseItem(String XiangMuBH, String XiangMuMC, String XingBieXZ, String XiaoJiL, String ZuiDaRL,		//�����Ŀ
			String YiBaoMRS, String BiSaiSJ, String BiSaiDD) {
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
			String sql = "insert into item_XiangMu values(?,?,?,?,?,?,?,?)";
			PreparedStatement temp = con.prepareStatement(sql);
			int xbxz = Integer.parseInt(XingBieXZ);
			int zdrl = Integer.parseInt(ZuiDaRL);
			int ybmrs = Integer.parseInt(YiBaoMRS);
			Date bssj = new Date();
			DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			bssj = null;
			try {
				bssj = simpleDateFormat.parse(BiSaiSJ);
			} catch (Exception e) {
				e.printStackTrace();
			}
			temp.setString(1, XiangMuBH);
			temp.setString(2, XiangMuMC);
			temp.setInt(3, xbxz);
			temp.setString(4, XiaoJiL);
			temp.setInt(5, zdrl);
			temp.setInt(6, ybmrs);
			temp.setDate(7, (java.sql.Date) bssj);
			temp.setString(8, BiSaiDD);
			temp.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
