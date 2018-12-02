<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>

</head>
<body>
	<%
		String oldPassword = request.getParameter("oldPassword");
		String newPassword = request.getParameter("newPassword");
		String reEnterNewPassword = request.getParameter("reEnterNewPassword");
		session.setAttribute("newPassword", newPassword);
		session.setAttribute("reEnterNewPassword", reEnterNewPassword);
	%>
	<div>
		<h1>修改用户密码</h1>
		<form action="" method="post" name="changePassword">
			原密码：<input type="password" name="oldPassword" maxlength="15"
				placeholder="输入原密码" id="oldPassword"><br>
			<br> 新密码：<input type="password" name="newPassword"
				maxlength="15" placeholder="密码长度为6-15个字符" id="newPassword">
			<%
				if (session.getAttribute("newPassword") != null) {
					if (session.getAttribute("newPassword").toString().length() < 6) {
						out.print("新密码需要大于6位！");
					}
				}
			%><br>
			<br> 确认新密码：<input type="password" name="reEnterNewPassword"
				placeholder="与新密码保持一致" id="reEnterNewPassword">
			<%
				if (session.getAttribute("newPassword") != null && session.getAttribute("reEnterNewPassword") != null)
					if (!session.getAttribute("newPassword").equals(session.getAttribute("reEnterNewPassword"))) {
						out.print("两次输入密码需要一致！");
					}
			%><br>
			<br> <input type="submit" value="修改"> <input
				type="reset" value="重置">
		</form>
	</div>


	<%
		// 		if(oldPassword!=null && newPassword!=null && reEnterNewPassword!=null){
		// 			if(oldPassword.equals()){		//从数据库取原密码核对
		// 				if(newPassword.length()>=6 && reEnterNewPassword.length()>=6){
		// 					if(newPassword.equals(reEnterNewPassword)){
		// 						//将新密码提交
		// 					}
		// 					else{
		// 						out.print("新密码两次输入不一致！");
		// 					}
		// 					}
		// 				else{
		// 					out.print("密码不能小于6位！");
		// 				}
		// 			}
		// 			else{
		// 				out.print("原密码错误！");
		// 			}
		// 		}
		// 		else{
		// 			out.print("密码不能为空！请重新输入");
		// 		}
	%>
</body>
</html>