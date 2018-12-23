package com.selectScores;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.geotest.DBConnection;





public class SelectScores {
	
	
	//学生端查看自己的成绩,以学生的学号作为参数,返回参加项目的成绩,包括团体项目
	//如果暂时还没有成绩的项目以"null"的形式返回
	//团体成绩暂时没有写，数据库中没有学生与学院的关系
	public static ArrayList<ArrayList<String>> SelectOwnScore(String Id)
	{
		String driverName="com.mysql.cj.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		
//		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
//		String  un="root";
//		String  pw="123456";
		
		
		ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
		Connection con;
		try {
			con = DBConnection.getConnection();
			Statement statement=con.createStatement();
			
			//先查找个人成绩
			String selectscoresofGeren = "select XiangMuMC,ChengJi,JiFen from score_geren,item_xiangmu where (YunDongYBH = (select YunDongYBH from student_yundongy where XueHao = \""+Id+"\")) and score_geren.XiangMuBH = item_xiangmu.XiangMuBH;";
			ResultSet reasultSearch=statement.executeQuery(selectscoresofGeren);
			
			
			//查询的结果依次分别为 XiangMuMC ChengJi JiFen
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("XiangMuMC"));
				list.add(reasultSearch.getString("ChengJi"));
				list.add(reasultSearch.getString("JiFen"));
				list2.add(list);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list2;
	}
	
	//学校和学院都是通过这个函数来查询所有人的成绩
	public static ArrayList<ArrayList<String>> ColleageSelectScore()
	{
		String driverName="com.mysql.cj.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		
//		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
//		String  un="root";
//		String  pw="123456";
		
		
		ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
		Connection con;
		try {
			con = DBConnection.getConnection();
			Statement statement=con.createStatement();
			
			//先查找个人成绩
			String selectscoresofGeren = "select XingMing,XiangMuMC,ChengJi from student_xuesheng,score_geren,item_xiangmu,student_yundongy where (score_geren.XiangMuBH = item_xiangmu.XiangMuBH) and (student_xuesheng.XueHao = student_yundongy.XueHao) and (student_yundongy.YunDongYBH = score_geren.YunDongYBH);";
			ResultSet reasultSearch=statement.executeQuery(selectscoresofGeren);
			
			//查询的结果依次分别为 XingMing,XiangMuMC,ChengJi
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("XingMing"));
				list.add(reasultSearch.getString("XiangMuMC"));
				list.add(reasultSearch.getString("ChengJi"));
				list2.add(list);
			}
			//select XueYuanMC,XiangMuMC,ChengJi from item_xiangmu,score_tuanti,college_xueyuan where (item_xiangmu.XiangmuBH = score_tuanti.XiangMuBH and score_tuanti.XueYuanBH = college_xueyuan.XueYuanBH);
			//再查找团体成绩
			
			String selectscoresofTuanti = "select XueYuanMC,XiangMuMC,ChengJi from item_xiangmu,score_tuanti,college_xueyuan where (item_xiangmu.XiangmuBH = score_tuanti.XiangMuBH and score_tuanti.XueYuanBH = college_xueyuan.XueYuanBH);";
			reasultSearch=statement.executeQuery(selectscoresofTuanti);
			
			//查询的结果依次分别为 XingMing,XiangMuMC,ChengJi
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("XueYuanMC"));
				list.add(reasultSearch.getString("XiangMuMC"));
				list.add(reasultSearch.getString("ChengJi"));
				list2.add(list);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list2;
	}
	
	public static void main(String args[])
	{
		//ArrayList<ArrayList<String>> list2 = SelectOwnScore("105032016081");
		ArrayList<ArrayList<String>> list2 = ColleageSelectScore();
		for(ArrayList<String> list:list2)
		{
			for(String s:list)
			{
				System.out.print(s+" ");
			}
			System.out.println("");
		}
		
	}

}
