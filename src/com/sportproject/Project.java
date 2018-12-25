package com.sportproject;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
public class Project 
{
	public static ArrayList<ArrayList<String>> pullProject(String stuID)
	{
		ArrayList<ArrayList<String>> list2= new ArrayList<ArrayList<String>>();
		
		String driverName="com.mysql.cj.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		//连接数据库

		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
		String  un="root";
		String  pw="123456";
		Connection con;
		try {
			con = DriverManager.getConnection(url,un,pw);
			Statement statement=con.createStatement();
			String searchSex = "select XingBie from student_xuesheng where Xuehao = "+stuID+";";
			ResultSet reasultSearchSex=statement.executeQuery(searchSex);
			String deleteProjectOfSex = "";
			if(reasultSearchSex.next())
			{
				String sex = reasultSearchSex.getString("XingBie");	
				if(sex.equals("男"))
					deleteProjectOfSex = "女";
				else
					deleteProjectOfSex = "男";
			}
			//对所有比赛项目进行筛选
			String searchSqlRoad = "select * from item_xiangmu";
			ResultSet reasultSearch=statement.executeQuery(searchSqlRoad);
			while(reasultSearch.next()){
				
				String XingBieXZ=reasultSearch.getString("XingBieXZ");
				
				if(!XingBieXZ.equals(deleteProjectOfSex))
				{
					//与比赛性别要求一致或者比赛没有要求性别
					ArrayList<String> list = new ArrayList<String>();
					
					String XiangMuBH=reasultSearch.getString("XiangMuBH");
					list.add(XiangMuBH);
					
					String XiangMuMC=reasultSearch.getString("XiangMuMC");
					list.add(XiangMuMC);
					
					//将字符转为性别要求
					if(XingBieXZ.equals("女"))
						XingBieXZ = "女";
					else if(XingBieXZ.equals("男"))
						XingBieXZ = "男";
					else
						XingBieXZ = "无";
					list.add(XingBieXZ);
					
					
					String BiSaiDD=reasultSearch.getString("BiSaiDD");
					list.add(BiSaiDD);
				
					Date BiSaiSJ =reasultSearch.getDate("BiSaiSJ");
					list.add(BiSaiSJ+"");
				
					list2.add(list);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list2;
	}
	
	//将已选的比赛项目插入到数据库中
	public static void pushProject(ArrayList<String> list,String stuId)
	{
		String driverName="com.mysql.cj.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		//连接数据库
		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
		String  un="root";
		String  pw="123456";
		try {
			//循环将数据插入到数据库中
			Connection con=DriverManager.getConnection(url,un,pw);
			Statement statement=con.createStatement();
			
			if(list.size()==1)
			{
				String insertRow = "insert into student_baoming(XueHao,BaoMingXM1) values(\""+stuId+"\",\""+list.get(0)+"\");";
				statement.executeUpdate(insertRow);
			}
			else
			{
				String insertRow = "insert into student_baoming values(\""+stuId+"\",\""+list.get(0)+"\",\""+list.get(1)+"\");";
				statement.executeUpdate(insertRow);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//查看已选的比赛项目
	
	public static ArrayList<ArrayList<String>> selectProject(String stuID)
	{
		ArrayList<ArrayList<String>> list2= new ArrayList<ArrayList<String>>();
		
		String driverName="com.mysql.cj.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		//连接数据库

		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
		String  un="root";
		String  pw="123456";
		Connection con;
		try {
			con = DriverManager.getConnection(url,un,pw);
			Statement statement=con.createStatement();
			String searchXM1 = "select BaoMingXM1,XiangMuMC,BiSaiSJ,BiSaiDD from student_baoming,item_xiangmu where (BaoMingXM1=XiangMuBH and Xuehao = "+stuID+");";
			ResultSet reasultSearchXM1=statement.executeQuery(searchXM1);
			while(reasultSearchXM1.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearchXM1.getString("BaoMingXM1"));
				list.add(reasultSearchXM1.getString("XiangMuMC"));
				list.add(reasultSearchXM1.getString("BiSaiSJ"));
				list.add(reasultSearchXM1.getString("BiSaiDD"));
				list2.add(list);
			}
			String searchXM2 = "select BaoMingXM2,XiangMuMC,BiSaiSJ,BiSaiDD from student_baoming,item_xiangmu where (BaoMingXM2=XiangMuBH and Xuehao = "+stuID+");";
			ResultSet reasultSearchXM2=statement.executeQuery(searchXM2);
			while(reasultSearchXM2.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearchXM2.getString("BaoMingXM2"));
				list.add(reasultSearchXM2.getString("XiangMuMC"));
				list.add(reasultSearchXM2.getString("BiSaiSJ"));
				list.add(reasultSearchXM2.getString("BiSaiDD"));
				list2.add(list);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list2;
	}
}