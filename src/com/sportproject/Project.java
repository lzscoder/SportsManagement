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
	public static ArrayList<ArrayList<String>> pullProject(String stuID)
	{
		ArrayList<ArrayList<String>> list2= new ArrayList<ArrayList<String>>();
		
		String driverName="com.mysql.cj.jdbc.Driver";
		try{
		       Class.forName(driverName);
		}catch(ClassNotFoundException e){
		    	e.printStackTrace();
		}
		//�������ݿ�

//		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
//		String  un="root";
//		String  pw="123456";
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
				if(sex.equals("��"))
					deleteProjectOfSex = "Ů";
				else
					deleteProjectOfSex = "��";
			}
			//�����б�����Ŀ����ɸѡ
			String searchSqlRoad = "select * from item_xiangmu";
			ResultSet reasultSearch=statement.executeQuery(searchSqlRoad);
			while(reasultSearch.next()){
				
				String XingBieXZ=reasultSearch.getString("XingBieXZ");
				
				if(!XingBieXZ.equals(deleteProjectOfSex))
				{
					//������Ա�Ҫ��һ�»��߱���û��Ҫ���Ա�
					ArrayList<String> list = new ArrayList<String>();
					
					String XiangMuBH=reasultSearch.getString("XiangMuBH");
					list.add(XiangMuBH);
					
					String XiangMuMC=reasultSearch.getString("XiangMuMC");
					list.add(XiangMuMC);
					
					//���ַ�תΪ�Ա�Ҫ��
					if(XingBieXZ.equals("Ů"))
						XingBieXZ = "Ů";
					else if(XingBieXZ.equals("��"))
						XingBieXZ = "��";
					else
						XingBieXZ = "��";
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
		//�������ݿ�
//		String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
//		String  un="root";
//		String  pw="123456";
		try {
			//ѭ�������ݲ��뵽���ݿ���
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
