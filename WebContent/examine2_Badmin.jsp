<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %><%@  page  import="com.college.*" %>
  <%@  page  import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>资格审核</title>
<link rel="stylesheet" type="text/css" href="web.css" />
<link rel="stylesheet" type="text/css" href="button.css" />
</head>
<body>

<%

String UserName = (String) session.getAttribute("USERNAME");
String spitem = request.getParameter("sportitem");
ArrayList<ArrayList<String>> list = ChooseInCollege.getlist(spitem, UserName);
ArrayList<ArrayList<String>> choosed = ChoosedStudent.getlist(UserName, spitem);
String tijiao=null;
String flag = " ";
 %>
<h1>运动员管理系统</h1> <br/> <br/>
<table width="1000" bgcolor="#FFFFFF"border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#804040">
    <td><table border="0" cellspacing="0" cellpadding="0" class="nav">
  <tr>
    <td width="120" height="45" align="center" valign="middle"><a href="index_Badmin.jsp">赛事概况</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="arrange_Badmin.jsp">查看赛程</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="examine_Badmin.jsp">资格审核</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="sportlist_Badmin.jsp">正赛名单</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="score_Badmin.jsp">成绩榜</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="login.jsp">退出系统</a></td>
  </tr>
    </table>
</td>
  </tr>
</table>
<table>
<tr>
    <td>
    <h2> 运动员名单</h2>
    </td>
  </tr>
</table><br/>
<form action="" method="post">
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center">学号</td>
<td align="center">专业</td>
<td align="center">年级</td>
<td align="center">班级</td>
<td align="center">姓名</td>
<td align="center">录用</td>
</tr>
<%for(int i=0;i<list.size();i++){%>
<tr>

<td align="center"><%=list.get(i).get(0)%></td>
<td align="center"> </td>
<td align="center"> <%=list.get(i).get(2)%></td>
<td align="center"> <%=list.get(i).get(3)%></td>
<td align="center"> <%=list.get(i).get(1)%></td>
<td align="center"><button type="submit" name="tijiao" value=<%=list.get(i).get(0)%>>提交</button></td>
</tr>
<%}%>

</table><br/><br/>
</form>
<%
tijiao = request.getParameter("tijiao");
if(tijiao!=null) {
	ChooseInCollege.chooseSport(spitem, tijiao);
	tijiao=null;
	flag="<script>alert('选择成功')</script>";
}


%>
<%=flag %>
<%flag=" "; %>
<hr>已选
<%
if(choosed.size()>0) {
	for(int i=0;i<choosed.size();i++){
		out.print(choosed.get(i).get(0));
		out.print(choosed.get(i).get(1));
		out.print(choosed.get(i).get(2));
		out.print(choosed.get(i).get(3));
		out.print(choosed.get(i).get(4));
	}
}
%>
<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>

</body>
</html>