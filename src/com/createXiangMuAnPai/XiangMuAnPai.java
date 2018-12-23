package com.createXiangMuAnPai;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import com.geotest.DBConnection;

public class XiangMuAnPai {
	
	
	//对比赛的组别赛道进行安排
	public static void saiChengAnPai()
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
		
		//首先是田赛的安排,直接使用报名顺序就OK
		//list2用来存储田赛的项目，以及序号的安排
		ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
		
		Connection con;
		try {
			//打开与数据库的链接
			con = DBConnection.getConnection();
			Statement statement=con.createStatement();
			
			//先查找student_baoming.BaoMingXM1中为田赛的项目
			String selectXiangmu1 = "select BaoMingXM1,YunDongYBH,BisaiDD from student_baoming,item_xiangmu,student_yundongy where (student_baoming.BaoMingXM1=item_xiangmu.XiangMuBH and item_xiangmu.BiSaitype='1' and student_yundongy.XueHao=student_baoming.XueHao and student_baoming.XiangMu1TG='1');";
			ResultSet reasultSearch=statement.executeQuery(selectXiangmu1);
			
			//查询的结果依次分别为 BaoMingXM1,YunDongYBH,BisaiDD
			
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("BaoMingXM1"));
				list.add(reasultSearch.getString("YunDongYBH"));
				list.add("1");
				list.add("tmp");//最后会被替换为序号
				list.add(reasultSearch.getString("BisaiDD"));
				list2.add(list);
			}
			
			//再查找student_baoming.BaoMingXM2中为田赛的项目
			String selectXiangmu2 = "select BaoMingXM2,YunDongYBH,BisaiDD from student_baoming,item_xiangmu,student_yundongy where (student_baoming.BaoMingXM2=item_xiangmu.XiangMuBH and item_xiangmu.BiSaitype='1' and student_yundongy.XueHao=student_baoming.XueHao and student_baoming.XiangMu2TG='1');";
			reasultSearch=statement.executeQuery(selectXiangmu2);
			
			//查询的结果依次分别为 XueHao,BaoMingXM2,YunDongYBH,BisaiDD
			
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("BaoMingXM2"));
				list.add(reasultSearch.getString("YunDongYBH"));
				list.add("1");
				list.add("tmp");//最后会被替换为序号
				list.add(reasultSearch.getString("BisaiDD"));
				list2.add(list);
			}
			
			//生成田赛的序号
			Collections.sort(list2, new Comparator<ArrayList<String>>() {
				@Override
				public int compare(ArrayList<String> o1, ArrayList<String> o2) {
					// TODO Auto-generated method stub
					return Integer.parseInt(o1.get(0))-Integer.parseInt(o2.get(0));
				}
	        });
			
			
			if(list2.size()!=0)
			{
				list2.get(0).set(3,""+1);
			}
			int j = 2;
			for(int i = 1;i<list2.size();i++)
			{
				if(!list2.get(i).get(0).equals(list2.get(i-1).get(0)))
					j = 1;
				list2.get(i).set(3, ""+j);
				j++;
			}
			
			//测试是OK的
//			for(ArrayList<String> list:list2)
//				System.out.println(list.toString());
			
			
			
			
			
			
			
			
			
			
			//下面是对径赛进行操作
			//先查找student_baoming.BaoMingXM1中为田赛的个人项目进行安排
			selectXiangmu1 = "select YunDongYBH,BaoMingXM1,BisaiDD from  student_baoming,item_xiangmu,student_yundongy where ( item_xiangmu.XiangMuBH=student_baoming.BaoMingXM1 and student_baoming.XiangMu1TG='1' and item_xiangmu.BiSaitype='0' and student_yundongy.XueHao = student_baoming.XueHao and item_xiangmu.TuanTi='0');";
			reasultSearch=statement.executeQuery(selectXiangmu1);
			
			ArrayList<ArrayList<String>> list22 = new ArrayList<ArrayList<String>>();
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("BaoMingXM1"));
				list.add(reasultSearch.getString("YunDongYBH"));
				list.add("1");
				list.add("tmp");//最后会被替换为序号
				list.add(reasultSearch.getString("BisaiDD"));
				list22.add(list);
			}
			
			selectXiangmu2 = "select YunDongYBH,BaoMingXM2,BisaiDD from  student_baoming,item_xiangmu,student_yundongy where ( item_xiangmu.XiangMuBH=student_baoming.BaoMingXM2 and student_baoming.XiangMu1TG='1' and item_xiangmu.BiSaitype='0' and student_yundongy.XueHao = student_baoming.XueHao and item_xiangmu.TuanTi='0');";
			reasultSearch=statement.executeQuery(selectXiangmu2);
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("BaoMingXM2"));
				list.add(reasultSearch.getString("YunDongYBH"));
				list.add("1");
				list.add("tmp");//最后会被替换为序号
				list.add(reasultSearch.getString("BisaiDD"));
				list22.add(list);
			}
			
			Collections.sort(list22, new Comparator<ArrayList<String>>() {
				@Override
				public int compare(ArrayList<String> o1, ArrayList<String> o2) {
					// TODO Auto-generated method stub
					return Integer.parseInt(o1.get(0))-Integer.parseInt(o2.get(0));
				}
	        });
			
			if(list22.size()!=0)
			{
				list22.get(0).set(2,"1");
				list22.get(0).set(3,"1");
			}
			
			int i = 1;j=2;
			for(int z = 1;z<list22.size();z++)
			{
				if(!list22.get(z).get(0).equals(list22.get(z-1).get(0)))
				{
					i = 1;
					j = 1;
				}
				if(j>8)//增加一个小组，编号重新设置为1
				{
					i++;
					j = 1;
				}
				list22.get(z).set(2, ""+i);
				list22.get(z).set(3, ""+j);
				j++;
			}
			
			//测试OK
//			for(ArrayList<String> list:list22)
//			{
//					System.out.println(list.toString());
//			}
			
			
			
			//对径赛中的团体项目进行安排
			
			//获取第一部分BaoMingXM1
			selectXiangmu1 = "select YunDongYBH,BaoMingXM1,XueYuanBH,BiSaiDD from student_xuesheng,student_yundongy,student_baoming,item_xiangmu where (student_baoming.XiangMu1TG='1' and student_baoming.BaoMingXM1 = item_xiangmu.XiangMuBH and student_yundongy.XueHao = student_baoming.XueHao and student_xuesheng.XueHao = student_yundongy.XueHao and item_xiangmu.BiSaitype='0' and item_xiangmu.TuanTi='1');";
			reasultSearch=statement.executeQuery(selectXiangmu1);
			
			ArrayList<ArrayList<String>> list221 = new ArrayList<ArrayList<String>>();
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("BaoMingXM1"));
				list.add(reasultSearch.getString("YunDongYBH"));
				list.add("1");
				list.add("tmp");//最后会被替换为序号
				list.add(reasultSearch.getString("BisaiDD"));
				list.add(reasultSearch.getString("XueYuanBH"));
				list221.add(list);
			}
			
			selectXiangmu2 = "select YunDongYBH,BaoMingXM2,XueYuanBH,BiSaiDD from student_xuesheng,student_yundongy,student_baoming,item_xiangmu where (student_baoming.XiangMu2TG='1' and student_baoming.BaoMingXM2 = item_xiangmu.XiangMuBH and student_yundongy.XueHao = student_baoming.XueHao and student_xuesheng.XueHao = student_yundongy.XueHao and item_xiangmu.BiSaitype='0' and item_xiangmu.TuanTi='1');";
			reasultSearch=statement.executeQuery(selectXiangmu2);
			while(reasultSearch.next())
			{
				ArrayList<String> list = new ArrayList<String>();
				list.add(reasultSearch.getString("BaoMingXM2"));
				list.add(reasultSearch.getString("YunDongYBH"));
				list.add("1");
				list.add("tmp");//最后会被替换为序号
				list.add(reasultSearch.getString("BisaiDD"));
				list.add(reasultSearch.getString("XueYuanBH"));
				list221.add(list);
			}
			
			
			Collections.sort(list221, new Comparator<ArrayList<String>>() {
				@Override
				public int compare(ArrayList<String> o1, ArrayList<String> o2) {
					// TODO Auto-generated method stub
					
					//优先排列项目编号，项目编号相等再排列学院编号，再排列个人的编号
					//BaoMingXM2,YunDongYBH,1,tmp,BiSaiDD,XueYuanBH
					
					if(Integer.parseInt(o1.get(0))-Integer.parseInt(o2.get(0))==0)
					{
						if(Integer.parseInt(o1.get(5))-Integer.parseInt(o2.get(5))==0)
							return Integer.parseInt(o1.get(1))-Integer.parseInt(o2.get(1));
						else
							return Integer.parseInt(o1.get(5))-Integer.parseInt(o2.get(5));
					}
					else
						return Integer.parseInt(o1.get(0))-Integer.parseInt(o2.get(0));
				}
	        });
			
			//对list221进行分配跑到与分组
			
			if(list221.size()!=0)
			{
				list221.get(0).set(2, ""+1);
				list221.get(0).set(3, ""+1);
			}
			
			i = 1;j = 1;
			for(int z = 1;z<list221.size();z++)
			{
				if(!list221.get(z).get(0).equals(list221.get(z-1).get(0)))
				{
					i = 1;
					j = 1;
				}
				else if(!list221.get(z).get(5).equals(list221.get(z-1).get(5)))
				{
					j++;
				}
				if(j>8)//增加一个小组，编号重新设置为1
				{
					i++;
					j = 1;
				}
				
				list221.get(z).set(2, ""+i);
				list221.get(z).set(3, ""+j);
				
			}
			//测试OK
//			for(ArrayList<String> list:list221)
//			{
//					System.out.println(list.toString());
//			}
			
			
			
			//合并径赛中的团体与个人项目并与田赛的数据结合
			
			ArrayList<ArrayList<String>> back = new ArrayList<ArrayList<String>>();
			
			
			
			for(ArrayList<String> list:list2)
			{
				back.add(list);
			}
			for(ArrayList<String> list:list22)
			{
				back.add(list);
			}
			for(ArrayList<String> list:list221)
			{
				ArrayList<String> aList = new ArrayList<String>(list.subList(0, 5));
				back.add(aList);
			}
			
			
			for(ArrayList<String> list:back)
				System.out.println(list.toString());
			
			
			
			//写入到数据库中
			for(ArrayList<String> list:back)
			{
				Statement statement1=con.createStatement();
				String insertRow = "insert into item_saicheng values(\""+list.get(0)+"\",\""+list.get(1)+"\",\""+list.get(2)+"\",\""+list.get(3)+"\",\""+list.get(4)+"\");";
				statement1.executeUpdate(insertRow);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		
		
	}
	public static void main(String[] args) {
		saiChengAnPai();
	}

}
