package com.shool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.geotest.DBConnection;

public class InputReasult {

	// xuehao  xueyuanMC xingming  
	public static ArrayList<ArrayList<String>> getListGR (String XiangMuBH) {
		ArrayList<ArrayList<String>> list= new ArrayList<ArrayList<String>>();
		try {
			Connection con = DBConnection.getConnection();
			String sql = "select XueHao,XueYuan,XingMing from student_xuesheng,student_baoming where (student_xuesheng.XueHao=student_baoming.XueHao) and "
					+ "((BaoMingXM1='"+XiangMuBH+"' and XiangMu1TG=1) or (BaoMingXM2='"+XiangMuBH+"' and XiangMu2TG=1))";
			Statement statement=con.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			while(rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("XueHao"));
				l.add(rs.getString("XueYuanMC"));
				l.add(rs.getString("XingMing"));
				list.add(l);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//xueyuanBH xueyuanMC
	public static ArrayList<ArrayList<String>> gelistXY() {
		ArrayList<ArrayList<String>> list= new ArrayList<ArrayList<String>>();
		try {
			Connection con = DBConnection.getConnection();
			String sql = "select XueYuanBH,XueYuanMC from college_xueyuan";
			Statement statement=con.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			while(rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("XueYuanBH"));
				l.add(rs.getString("XueYuanMC"));
				list.add(l);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	public static void inputGeRen(String YunDongYBH,String XiangMuBH,String ChengJi,int JiFen,int PaiMing) {
		try {
			Connection con = DBConnection.getConnection();
			String delete = "delete from score_geren where YunDongYBH='"+YunDongYBH+"' and XiangMuBH='"+XiangMuBH+"'";
			String sql = "insert into  score_geren (YunDongYBH,XiangMuBH,ChengJi,JiFen,PaiMing) values(?,?,?,?,?)";
			PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(delete);
			ptmt1.execute();
			PreparedStatement ptmt = (PreparedStatement) con.prepareStatement(sql);
			ptmt.setString(1, YunDongYBH);
			ptmt.setString(2, XiangMuBH);
			ptmt.setString(3, ChengJi);
			ptmt.setInt(4, JiFen);
			ptmt.setInt(5, PaiMing);
			ptmt.execute();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public static void inputTuanTi(String XueYuanBH,String XiangMuBH,String ChengJi,int JiFen,int PaiMing) {
		try {
			Connection con = DBConnection.getConnection();
			String delete = "delete from score_tuanti where XueYuanBH='"+XueYuanBH+"' and XiangMuBH='"+XiangMuBH+"'";
			String sql = "insert into  score_tuanti (XueYuanBH,XiangMuBH,ChengJi,JiFen,PaiMing) values(?,?,?,?,?)";
			PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(delete);
			ptmt1.execute();
			PreparedStatement ptmt = (PreparedStatement) con.prepareStatement(sql);
			ptmt.setString(1, XueYuanBH);
			ptmt.setString(2, XiangMuBH);
			ptmt.setString(3, ChengJi);
			ptmt.setInt(4, JiFen);
			ptmt.setInt(5, PaiMing);
			ptmt.execute();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
