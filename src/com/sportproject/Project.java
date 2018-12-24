package com.sportproject;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import com.geotest.DBConnection;
public class Project 
{
	
	
	//从数据库中获得可以报名的项目
	public static ArrayList<ArrayList<String>> pullProject(String stuID)
	{
		ArrayList<ArrayList<String>> list2= new ArrayList<ArrayList<String>>();
		
		String driverName="com.mysql.cj.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		Connection con;
		try {
			con = DBConnection.getConnection();
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
			
			//获得所有的项目
			String searchSqlRoad = "select * from item_xiangmu;";
			
			ResultSet reasultSearch=statement.executeQuery(searchSqlRoad);
			while(reasultSearch.next()){
				
				String XingBieXZ=reasultSearch.getString("XingBieXZ");
				//只要不是被限制不能报名的项目都输出
				if(!XingBieXZ.equals(deleteProjectOfSex))
				{
					
					ArrayList<String> list = new ArrayList<String>();
					
					String XiangMuBH=reasultSearch.getString("XiangMuBH");
					list.add(XiangMuBH);
	
					String XiangMuMC=reasultSearch.getString("XiangMuMC");
					list.add(XiangMuMC);
					
					list.add(XingBieXZ);
					
					String ZuiDaRS=reasultSearch.getString("ZuiDaRL");
					list.add(ZuiDaRS);
					
					String YiBaoMRS=reasultSearch.getString("YiBaoMRS");
					list.add(YiBaoMRS);
					
					Date BiSaiSJ =reasultSearch.getDate("BiSaiSJ");
					list.add(BiSaiSJ+"");
					
					String BiSaiDD=reasultSearch.getString("BiSaiDD");
					list.add(BiSaiDD);
					
					list2.add(list);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(ArrayList<String> list:list2)
		{
			System.out.println(list.toString());
		}
		return list2;
	}
	
	
	
	public static void pushProject(ArrayList<String> list,String stuId)
	{
		String driverName="com.mysql.cj.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		try {
			Connection con=DBConnection.getConnection();
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
}
