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
	
	public static ArrayList<ArrayList<String>> saiChengAnPai1(String XiangMuBH)
	{
		ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
		
		if(XiangMuBH.charAt(1)=='2')
		{
			Connection con;
			con = DBConnection.getConnection();
			Statement statement;
			try {
				statement = con.createStatement();
				String selectXiangmu1 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
						"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
						"college_xueyuan where (\r\n" + 
						"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
						"student_baoming.XiangMu1TG='1' and \r\n" + 
						"student_baoming.BaoMingXM1 = item_xiangmu.XiangMuBH and \r\n" + 
						"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
						"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
						"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				ResultSet reasultSearch=statement.executeQuery(selectXiangmu1);
				
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("0");
					list.add("0");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				String selectXiangmu2 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing from \r\n" + 
						"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
						"college_xueyuan where (\r\n" + 
						"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
						"student_baoming.XiangMu2TG='1' and \r\n" + 
						"student_baoming.BaoMingXM2 = item_xiangmu.XiangMuBH and \r\n" + 
						"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
						"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
						"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				reasultSearch=statement.executeQuery(selectXiangmu2);
				
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("0");
					list.add("0");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				
				Collections.sort(list2, new Comparator<ArrayList<String>>() {
					@Override
					public int compare(ArrayList<String> o1, ArrayList<String> o2) {
	
						
						if(Integer.parseInt(o1.get(1))-Integer.parseInt(o2.get(1))==0)
							return Integer.parseInt(o1.get(1))-Integer.parseInt(o2.get(1));
						else
							return Integer.parseInt(o1.get(1))-Integer.parseInt(o2.get(1));
					}
		        });
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		else if(XiangMuBH.charAt(0)=='0')
		{
			Connection con;
			con = DBConnection.getConnection();
			try {
				Statement statement = con.createStatement();
				String selectXiangmu1 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
				"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
				"college_xueyuan where (\r\n" + 
				"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
				"student_baoming.XiangMu1TG='1' and \r\n" + 
				"student_baoming.BaoMingXM1 = item_xiangmu.XiangMuBH and \r\n" + 
				"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
				"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
				"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				
				ResultSet reasultSearch=statement.executeQuery(selectXiangmu1);
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("0");
					list.add("0");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				String selectXiangmu2 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
						"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
						"college_xueyuan where (\r\n" + 
						"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
						"student_baoming.XiangMu2TG='1' and \r\n" + 
						"student_baoming.BaoMingXM2 = item_xiangmu.XiangMuBH and \r\n" + 
						"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
						"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
						"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				reasultSearch=statement.executeQuery(selectXiangmu2);
				
				
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("0");
					list.add("0");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else
		{
			String selectXiangmu1 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
					"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
					"college_xueyuan where (\r\n" + 
					"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
					"student_baoming.XiangMu1TG='1' and \r\n" + 
					"student_baoming.BaoMingXM1 = item_xiangmu.XiangMuBH and \r\n" + 
					"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
					"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
					"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
			
			Connection con;
			con = DBConnection.getConnection();

			try {
				Statement statement = con.createStatement();
				ResultSet reasultSearch=statement.executeQuery(selectXiangmu1);
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add(reasultSearch.getString("BiSaiDD"));
					list.add("0");
					list.add("0");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				String selectXiangmu2 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
						"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
						"college_xueyuan where (\r\n" + 
						"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
						"student_baoming.XiangMu2TG='1' and \r\n" + 
						"student_baoming.BaoMingXM2 = item_xiangmu.XiangMuBH and \r\n" + 
						"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
						"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
						"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				
				
				reasultSearch=statement.executeQuery(selectXiangmu2);
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("0");
					list.add("0");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		return list2;
	}
	
	public static ArrayList<ArrayList<String>> saiChengAnPai2(String XiangMuBH)
	{
		ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
		
		if(XiangMuBH.charAt(1)=='2')
		{
			Connection con;
			con = DBConnection.getConnection();
			Statement statement;
			try {
				statement = con.createStatement();
				String selectXiangmu1 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
						"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
						"college_xueyuan where (\r\n" + 
						"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
						"student_baoming.XiangMu1TG='1' and \r\n" + 
						"student_baoming.BaoMingXM1 = item_xiangmu.XiangMuBH and \r\n" + 
						"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
						"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
						"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				ResultSet reasultSearch=statement.executeQuery(selectXiangmu1);
				
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("1");
					list.add("tmp");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				String selectXiangmu2 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing from \r\n" + 
						"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
						"college_xueyuan where (\r\n" + 
						"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
						"student_baoming.XiangMu2TG='1' and \r\n" + 
						"student_baoming.BaoMingXM2 = item_xiangmu.XiangMuBH and \r\n" + 
						"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
						"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
						"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				reasultSearch=statement.executeQuery(selectXiangmu2);
				
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("1");
					list.add("tmp");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				
				Collections.sort(list2, new Comparator<ArrayList<String>>() {
					@Override
					public int compare(ArrayList<String> o1, ArrayList<String> o2) {
	
						
						if(Integer.parseInt(o1.get(1))-Integer.parseInt(o2.get(1))==0)
							return Integer.parseInt(o1.get(1))-Integer.parseInt(o2.get(1));
						else
							return Integer.parseInt(o1.get(1))-Integer.parseInt(o2.get(1));
					}
		        });
				
				
				int i = 1;int j = 1;
				for(int z = 1;z<list2.size();z++)
				{
					if(!list2.get(z).get(0).equals(list2.get(z-1).get(0)))
					{
						i = 1;
						j = 1;
					}
					else if(!list2.get(z).get(1).equals(list2.get(z-1).get(1)))
					{
						j++;
					}
					if(j>8)
					{
						i++;
						j = 1;
					}
					
					list2.get(z).set(5, ""+i);
					list2.get(z).set(6, ""+j);
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		else if(XiangMuBH.charAt(0)=='0')
		{
			Connection con;
			con = DBConnection.getConnection();
			try {
				Statement statement = con.createStatement();
				String selectXiangmu1 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
				"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
				"college_xueyuan where (\r\n" + 
				"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
				"student_baoming.XiangMu1TG='1' and \r\n" + 
				"student_baoming.BaoMingXM1 = item_xiangmu.XiangMuBH and \r\n" + 
				"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
				"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
				"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				
				ResultSet reasultSearch=statement.executeQuery(selectXiangmu1);
				int i = 1;
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("1");
					list.add(""+i);i++;
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				String selectXiangmu2 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
						"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
						"college_xueyuan where (\r\n" + 
						"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
						"student_baoming.XiangMu2TG='1' and \r\n" + 
						"student_baoming.BaoMingXM2 = item_xiangmu.XiangMuBH and \r\n" + 
						"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
						"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
						"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				reasultSearch=statement.executeQuery(selectXiangmu2);
				
				
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("1");
					list.add(""+i);i++;
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else
		{
			String selectXiangmu1 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
					"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
					"college_xueyuan where (\r\n" + 
					"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
					"student_baoming.XiangMu1TG='1' and \r\n" + 
					"student_baoming.BaoMingXM1 = item_xiangmu.XiangMuBH and \r\n" + 
					"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
					"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
					"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
			
			Connection con;
			con = DBConnection.getConnection();

			try {
				Statement statement = con.createStatement();
				ResultSet reasultSearch=statement.executeQuery(selectXiangmu1);
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add(reasultSearch.getString("BiSaiDD"));
					list.add("1");
					list.add("tmp");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				String selectXiangmu2 = "select YunDongYBH,XueYuanMC,ZhuanYe,NianJi,XingMing,BiSaiDD from \r\n" + 
						"student_xuesheng,student_yundongy,student_baoming,item_xiangmu,\r\n" + 
						"college_xueyuan where (\r\n" + 
						"college_xueyuan.XueYuanBH = student_xuesheng.XueYuanBH and\r\n" + 
						"student_baoming.XiangMu2TG='1' and \r\n" + 
						"student_baoming.BaoMingXM2 = item_xiangmu.XiangMuBH and \r\n" + 
						"student_yundongy.XueHao = student_baoming.XueHao and \r\n" + 
						"student_xuesheng.XueHao = student_yundongy.XueHao and \r\n" + 
						"item_xiangmu.XiangMuBH= \""+XiangMuBH+"\");";
				
				
				reasultSearch=statement.executeQuery(selectXiangmu2);
				while(reasultSearch.next())
				{
					ArrayList<String> list = new ArrayList<String>();
					list.add(reasultSearch.getString("YunDongYBH"));
					list.add(reasultSearch.getString("XueYuanMC"));
					list.add(reasultSearch.getString("ZhuanYe"));
					list.add(reasultSearch.getString("NianJi"));
					list.add(reasultSearch.getString("XingMing"));
					list.add("1");
					list.add("tmp");
					list.add(reasultSearch.getString("BiSaiDD"));
					list2.add(list);
				}
				
				for(int i = 0;i<list2.size();i++)
				{
					list2.get(i).set(5,""+(i/8+1));
					list2.get(i).set(6,""+(i%8+1));
				}
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		Connection con;
		con = DBConnection.getConnection();

		try {
			for(ArrayList<String> list:list2)
			{
				Statement statement1=con.createStatement();
				String insertRow = "insert into item_saicheng values(\""+XiangMuBH+"\",\""+list.get(0)+"\",\""+list.get(5)+"\",\""+list.get(6)+"\",\""+list.get(7)+"\");";
				statement1.executeUpdate(insertRow);	
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return list2;
	}
	
	
	
	
	
	
	public static ArrayList<ArrayList<String>> selectSaiChengAnPai()
	{
		
		Connection con;
		con = DBConnection.getConnection();
		Statement statement;
		ArrayList<ArrayList<String>> list2 = new ArrayList<ArrayList<String>>();
		
		try {
			statement = con.createStatement();
			String selectSaiChengAnPai = "select XiangMuMC,BiSaiSJ,BiSaiDD from item_xiangmu;";
			ResultSet reasultSearch=statement.executeQuery(selectSaiChengAnPai);
			
			while(reasultSearch.next())
			{
				ArrayList<String> list =  new ArrayList<String>();
				if(reasultSearch.getDate("BiSaiSJ")!=null)
				{
					list.add(reasultSearch.getString("XiangMuMC")); 
					list.add(reasultSearch.getString("BiSaiDD")); 
					String date = reasultSearch.getTimestamp("BiSaiSJ").toString();
					list.add(date);
					list2.add(list);
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Collections.sort(list2, new SortByAge());
		
		return list2;
		
	}

}
class SortByAge implements Comparator 
{
	public int compare(Object o1, Object o2) 
	{
		ArrayList<String> s1 = (ArrayList<String>) o1;
		ArrayList<String> s2 = (ArrayList<String>) o2;
		return 0-s2.get(2).compareTo(s1.get(2));
	}
}
