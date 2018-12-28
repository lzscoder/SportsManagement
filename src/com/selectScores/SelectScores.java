package com.selectScores;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;



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
			
			
			ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
			Connection con;
			try {
				con = DBConnection.getConnection();
				Statement statement=con.createStatement();
				
				//先查找个人成绩
				String selectscoresofGeren = "select XiangMuMC,ChengJi,JiFen,PaiMing from score_geren,item_xiangmu where (YunDongYBH = (select YunDongYBH from student_yundongy where XueHao = \""+Id+"\")) and score_geren.XiangMuBH = item_xiangmu.XiangMuBH;";
				ResultSet reasultSearch=statement.executeQuery(selectscoresofGeren);
				
				
				//查询的结果依次分别为 XiangMuMC ChengJi JiFen
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("XiangMuMC"));
					list.add(reasultSearch.getString("ChengJi"));
					list.add(reasultSearch.getString("PaiMing"));
					list.add(reasultSearch.getString("JiFen"));
					list2.add(list);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list2;
		}
		
		
		
		//学院和学校按照运动项目的名称来查询该项目的所有人的成绩
		public static ArrayList<ArrayList<String>> ScoreOfItem(String ItemNum)
		{
			
			String driverName="com.mysql.cj.jdbc.Driver";
			try{
			       Class.forName(driverName);
			}catch(ClassNotFoundException e){
			    	e.printStackTrace();
			}
			
			ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
			Connection con;
			try {
				con = DBConnection.getConnection();
				Statement statement=con.createStatement();
				
				
				//找个人成绩
				String selectscoresofGeren = "select XueYuanMC,student_yundongy.YunDongYBH,XingMing,ChengJi,PaiMing,JiFen from college_xueyuan,student_xuesheng,score_geren,item_xiangmu,student_yundongy where (score_geren.XiangMuBH = item_xiangmu.XiangMuBH) and (student_xuesheng.XueHao = student_yundongy.XueHao) and (student_yundongy.YunDongYBH = score_geren.YunDongYBH) and item_xiangmu.XiangMuBH = \""+ItemNum+"\" and college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH;";
				ResultSet reasultSearch=statement.executeQuery(selectscoresofGeren);
				
				//查询的结果依次分别为 XingMing,XiangMuMC,ChengJi
				
				boolean flag = false;
				while(reasultSearch.next())
				{
					if(flag==false)
						flag = true;
					ArrayList<String> list = new ArrayList<String>();
					
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XingMing"));
					list.add(reasultSearch.getString("ChengJi"));
					list.add(reasultSearch.getString("PaiMing"));
					list.add(reasultSearch.getString("JiFen"));
					list2.add(list);
				}
				
				if(flag==false)
				{
					//该项目不是个人项目，前面的查找结果中为空
					String selectscoresofTuanti = "select XueYuanMC,XiangMuMC,ChengJi,PaiMing,JiFen from item_xiangmu,score_tuanti,college_xueyuan where (item_xiangmu.XiangmuBH = score_tuanti.XiangMuBH and score_tuanti.XueYuanBH = college_xueyuan.XueYuanBH and item_xiangmu.XiangMuBH=\""+ItemNum+"\");";
					reasultSearch=statement.executeQuery(selectscoresofTuanti);
					
					//查询的结果依次分别为 select XueYuanMC,XiangMuMC,ChengJi,PaiMing,JiFen
					while(reasultSearch.next())
					{
						ArrayList<String> list = new ArrayList<String>();
						list.add(reasultSearch.getString("XueYuanMC"));
						list.add("团体");
						list.add(reasultSearch.getString("XiangMuMC"));
						list.add(reasultSearch.getString("ChengJi"));
						list.add(reasultSearch.getString("PaiMing"));
						list.add(reasultSearch.getString("JiFen"));
						list2.add(list);
					}
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list2;
		}
		
		
		
		
		//对学院的积分情况进行统计
		public static ArrayList<ArrayList<String>> GetOrderOfJiFen()
		{
			ArrayList<ArrayList<String>> back = new ArrayList<ArrayList<String>>();
			String driverName="com.mysql.cj.jdbc.Driver";
			try{
			       Class.forName(driverName);
			}catch(ClassNotFoundException e){
			    	e.printStackTrace();
			}
			
			ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
			
			
			//使用一个map对积分进行累加
			
			Connection con;
			try {
				con = DBConnection.getConnection();
				Statement statement=con.createStatement();
				String select = "select XueYuanMC,score_geren.YunDongYBH,XiangMuBH,JiFen from college_xueyuan,score_geren,student_yundongy,student_xuesheng where (student_xuesheng.XueHao=student_yundongy.XueHao and student_xuesheng.XueYuanBH=college_xueyuan.XueYuanBH and score_geren.YunDongYBH=student_yundongy.YunDongYBH);";
				ResultSet reasultSearch=statement.executeQuery(select);
				
				//先查找个人项目的积分
				
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("JiFen"));
					list2.add(list);
				}
				
				//再查找团体项目
				
				select = "select XueYuanMC,XiangMuBH,JiFen from score_tuanti,college_xueyuan where score_tuanti.XueYuanBH = college_xueyuan.XueYuanBH;";
				reasultSearch=statement.executeQuery(select);
				
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("JiFen"));
					list2.add(list);
				}
				
//				for(ArrayList<String> list:list2)
//				{
//					System.out.println(list.toString());
//				}
				//从List转换到map
				
				
				for(ArrayList<String> list:list2)
				{
					int i = 0;
					for(i = 0;i<back.size();i++)
					{
						if(list.get(0).equals(back.get(i).get(0)))
						{
							//将back[i].get(1)  设置为list[1]+back[i].get(1)
							
							int a = Integer.parseInt((String)list.get(1));
							int b = Integer.parseInt(back.get(i).get(1));
							String str = (a+b)+"";
							back.get(i).set(1,str);
							break;
						}
					}
					if(i==back.size())
					{
						back.add(list);
					}
				}
//				HashMap<String,String> m = new HashMap<String,String>();
//				
//				for(ArrayList<String> list:list2)
//				{
//					if(m.get(list.get(0))==null)
//					{
//						m.put(list.get(0),list.get(1));
//					}
//					else
//					{
//						int n1 = Integer.parseInt((String) m.get(list.get(0)));
//						int n2 = Integer.parseInt(list.get(1));
//						m.put(list.get(0),(n1+n2)+"");
//					}
//				}
				
				
//				for (String key : m.keySet()) 
//				{
//					ArrayList<String> list = new ArrayList<String>();
//					
//					list.add(key);
//					list.add(m.get(key));
//					list3.add(list);
//				}
				 Collections.sort(back, new SortByAge());
		
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int i = 1;
			for(ArrayList<String> list:back)
			{
				System.out.println(list.toString());
				list.add(""+i);
				i++;
			}
			
			
			return back;
		}
}
class SortByAge implements Comparator 
{
	public int compare(Object o1, Object o2) 
	{
		ArrayList<String> s1 = (ArrayList<String>) o1;
		ArrayList<String> s2 = (ArrayList<String>) o2;
		int a = Integer.parseInt(s1.get(1));
		int b = Integer.parseInt(s2.get(1));
		return b-a;
	}
}