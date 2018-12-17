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
					
					String XiaoJiL=reasultSearch.getString("XiaoJiL");
					list.add(XiaoJiL);
				
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
	public static void main(String []args)
	{
//		//pullProject test
//		ArrayList<ArrayList<String>> list2 = pullProject("105032016081");
//		System.out.println("XiangMuBH\tXiangMuMC\tXingBieXZ\tXiaoJiL\tBiSaiSJ");
//		for(ArrayList<String> list:list2)
//		{
//			for(String s:list)
//			{
//				System.out.print(s+"\t");
//			}
//			System.out.print("\n");
//		}
		//pushProject test
		ArrayList<String> list1 = new ArrayList<String>();
		list1.add("0011");
		pushProject(list1,"105032016121");
		
		ArrayList<String> list2 = new ArrayList<String>();
		list2.add("0011");
		list2.add("0012");
		pushProject(list2,"105032016111");
	}
}
