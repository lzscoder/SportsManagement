<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.geotest.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String XiangMuID = request.getParameter("xiangmuID");
String UserName = (String)session.getAttribute("USERNAME");
if(XiangMuID!=null&&UserName!=null) {	
	try {
		Connection con = DBConnection.getConnection();
		String sql1="select XueHao,XingMing,ZhuanYe,Nianji,Banji from student_xuesheng"
				+" where XueHao IN (select XueHao from student_BaoMing where XiangMuID='"
				+XiangMuID+"' and XueHao like in '"+UserName+"%')";
		Statement statement=con.createStatement();
		ResultSet rs=statement.executeQuery(sql1);
		%>
		<form>
		<% 
		while(rs.next()){
			//输出 sqlflag="select * from xuesheng_baoming where flag=1 and ";如果不等于null就表示已经被选择过
			//用表单，后面并显示勾选框，最下面显示保存提交按钮 if(flag)out.print("checked");choosedXuehao记录choosedXiangmu
		}String choosedXuehao="1";String choosedXiangmu="2";
		%>
		</form>
		<%
		String Xuehao=request.getParameter("XueHao");
		if(Xuehao!=null){
			String sql2 = "update xuesheng_baoming set flag=? where XueHao=? and XiangMuID=?";
			PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(sql2);
			ptmt1.setString(1, "0");
			ptmt1.setString(2, choosedXuehao);
			ptmt1.setString(3, choosedXiangmu);
			ptmt1.execute();
			PreparedStatement ptmt = (PreparedStatement) con.prepareStatement(sql2);
			ptmt.setString(1, "1");
			ptmt.setString(2, Xuehao);
			ptmt.setString(3, XiangMuID);
			ptmt.execute();
		}
		%>
		<%
	}catch(SQLException e) {
		e.printStackTrace();
	}
}
%>


</body>
</html>