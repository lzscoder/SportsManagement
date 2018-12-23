package ChaKanSaiCheng;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ChaKanSaiCheng {
	public static ArrayList<ArrayList<String>> getSchedule() { // 获取赛程
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
		String driverName = "com.mysql.cj.jdbc.Driver";
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String url = "jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
		String un = "root";
		String pw = "123456";
		Connection con;
		try {
			con = DriverManager.getConnection(url, un, pw);
			String sql = "select item_saicheng.XiangMuBH,item_xiangmu.XiangMuMC,item_saicheng.YunDongYBH,student_xuesheng.XingMing,item_saicheng.ZuBie,item_saicheng.XuHao,item_xiangmu.BiSaiSJ,item_xiangmu.BiSaiDD\r\n"
					+ "	from item_saicheng,item_xiangmu,student_yundongy,student_xuesheng\r\n"
					+ "	where item_xiangmu.XiangMuBH=item_saicheng.XiangMuBH and item_saicheng.YunDongYBH=student_yundongy.YunDongYBH and student_yundongy.XueHao=student_xuesheng.XueHao\r\n"
					+ "	order by item_xiangmu.BiSaiSJ";
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				ArrayList<String> l = new ArrayList<String>();
				l.add(rs.getString("XiangMuBH"));
				l.add(rs.getString("XiangMuMC"));
				l.add(rs.getString("YunDongYBH"));
				l.add(rs.getString("XingMing"));
				l.add(rs.getString("ZuBie"));
				l.add(rs.getString("XuHao"));
				l.add(rs.getString("BiSaiSj"));
				l.add(rs.getString("BiSaiDD"));
				list.add(l);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
