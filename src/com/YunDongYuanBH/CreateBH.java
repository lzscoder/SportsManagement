package com.YunDongYuanBH;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CreateBH {
	
	public static ArrayList<ArrayList<String>> create()
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
		ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
		try {
			//循环将数据插入到数据库中
			Connection con=DriverManager.getConnection(url,un,pw);
			Statement statement=con.createStatement();
			String selectXueHao = "select XueHao from student_baoming;";
			ResultSet reasultSearch=statement.executeQuery(selectXueHao);
			Integer i = 1;
			while(reasultSearch.next())
			{
				Statement statement1=con.createStatement();
				String Xuehao = reasultSearch.getString("XueHao");
				String num = i.toString();
				if(num.length()==1)
					num = "000"+num;
				else if(num.length()==2)
					num = "00"+num;
				else if(num.length()==3)
					num = "0"+num;
				String insertRow = "insert into student_yundongy values(\""+num+"\",\""+Xuehao+"\");";
				i++;
				statement1.executeUpdate(insertRow);
				
				ArrayList<String> list = new ArrayList<String>();
				list.add(num);list.add(Xuehao);
				list2.add(list);
			}
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list2;
		
	}
	public static void main(String [] args)
	{
		
		ArrayList<ArrayList<String>> list2 = create();
		for(ArrayList<String> list:list2)
		{
			for(String s:list)
			{
				System.out.print(s+"\t");
			}
			System.out.println("");
		}
	}

}
