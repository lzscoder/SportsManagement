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
		       System.out.println("ok");
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		    	System.out.println("false");
		}
		//�������ݿ�

		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
		String  un="root";
		String  pw="123456";
		Connection con;
		try {
			con = DriverManager.getConnection(url,un,pw);
			Statement statement=con.createStatement();
			System.out.println("3");
			String searchSex = "select XingBie from xuesheng where Xuehao = "+stuID;
			ResultSet reasultSearchSex=statement.executeQuery(searchSex);
			String deleteProjectOfSex = "";
			if(reasultSearchSex.next())
			{
				String sex = reasultSearchSex.getString("XingBie");	
				if(sex.equals("W"))
					deleteProjectOfSex = "M";
				else
					deleteProjectOfSex = "W";
				System.out.println(deleteProjectOfSex);
			}
			//�����б�����Ŀ����ɸѡ
			String searchSqlRoad = "select * from xiangmu";
			ResultSet reasultSearch=statement.executeQuery(searchSqlRoad);
			while(reasultSearch.next()){
				
				String XiangBieXZ=reasultSearch.getString("XiangBieXZ");
				
				if(!XiangBieXZ.equals(deleteProjectOfSex))
				{
					//������Ա�Ҫ��һ�»��߱���û��Ҫ���Ա�
					ArrayList<String> list = new ArrayList<String>();
					
					String XiangMuBH=reasultSearch.getString("XiangMuBH");
					list.add(XiangMuBH);
					
					String XiangMuMC=reasultSearch.getString("XiangMuMC");
					list.add(XiangMuMC);
					
					//���ַ�תΪ�Ա�Ҫ��
					if(XiangBieXZ.equals("W"))
						XiangBieXZ = "Ů";
					else if(XiangBieXZ.equals("M"))
						XiangBieXZ = "��";
					else
						XiangBieXZ = "������";
					list.add(XiangBieXZ);
					
					String XiaoJiL=reasultSearch.getString("XiaoJiL");
					list.add(XiaoJiL);
				
					Date BiSaiSJ =reasultSearch.getDate("BiSaiSJ");
					list.add(BiSaiSJ+"");
					
					//����
					System.out.println(list.toString());
					
					list2.add(list);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list2;
	}
	
	public static void pushProject(ArrayList<ArrayList<String>> list2)
	{
		String driverName="com.mysql.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		//�������ݿ�
		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
		String  un="root";
		String  pw="123456";
		try {
			//ѭ�������ݲ��뵽���ݿ���
			Connection con=DriverManager.getConnection(url,un,pw);
			Statement statement=con.createStatement();
			for(ArrayList<String> li:list2)
			{
				String insertRow = "insert into entryForm values(";
				int size = li.size();
				int i = 0;
				for(String str:li)
				{
					insertRow +=str;
					if(i!=size-1)
						insertRow+=",";
					else
						insertRow+=");";
					i++;
				}
				statement.executeUpdate(insertRow);
				System.out.println("insert ok");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
