<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.geotest.*" %> <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>
<link
     href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
     rel="stylesheet" />
</head>
<body>
	<%
		String username = (String)session.getAttribute("USERNAME");
		String flag = (String) session.getAttribute("judge");
	%>

		
		<form action="" method="post" name="changePassword"style="width: 30em; margin: auto; margin-top: 150px;">
		<h1>首次登陆修改密码</h1><br/><br/>
			 新密码：<br/><br/>
			  <div class="input-group input-group-md">
                <span class="input-group-addon" id="sizing-addon1"><i
                 class="glyphicon glyphicon-arrow-right" ></i></span> 
			      <input type="password" name="newPassword" maxlength="15" placeholder="密码长度为6-15个字符" id="newPassword" class="form-control">
				 </div><br/>
			<%
				if (session.getAttribute("newPassword") != null) {
					if (session.getAttribute("newPassword").toString().length() < 6) {
						out.print("新密码需要大于6位！");
					}
				}
			%>
			 确认新密码：<br/><br/>
			  <div class="input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon1"><i
                   class="glyphicon glyphicon-arrow-right" ></i></span> 
			           <input type="password" name="reEnterNewPassword"  placeholder="与新密码保持一致" id="reEnterNewPassword"class="form-control">
			   </div><br/><br/>
			 
			<%
				if (session.getAttribute("newPassword") != null && session.getAttribute("reEnterNewPassword") != null)
					if (!session.getAttribute("newPassword").equals(session.getAttribute("reEnterNewPassword"))) {
						out.print("两次输入密码需要一致！");
					}
			%>
			      <input type="submit" name="change"value="修改"class="btn btn-success btn-block" ><br/>
			      <input type="reset" value="重置"class="btn btn-success btn-block" ><br/><br/><br/><br/>
		</form>

<%
String change = request.getParameter("change");
if(change!=null) {
	
	String password = request.getParameter("newPassword");
	if(password!=null) {
		try {
			Connection con = DBConnection.getConnection();
			String sql1 = "update users_xuesheng set MiMa='"+password+"' where ZhangHao='"+username+"'";
			String sql2 = "update users_xueyuan set MiMa='"+password+"' where ZhangHao='"+username+"'";
			String sql3 = "update users_xuexiao set MiMa='"+password+"' where ZhangHao='"+username+"'";
			if("1".equals(flag)) {
				PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(sql1);
				ptmt1.execute();
				session.setAttribute("USERNAME", "");
				response.sendRedirect("login.jsp");
			}else if("2".equals(flag)) {
				PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(sql2);
				ptmt1.execute();
				session.setAttribute("USERNAME", "");
				response.sendRedirect("login.jsp");
			}else if("3".equals(flag)) {
				PreparedStatement ptmt1 = (PreparedStatement) con.prepareStatement(sql3);
				ptmt1.execute();
				session.setAttribute("USERNAME", "");
				response.sendRedirect("login.jsp");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
%>


</body>
</html>
