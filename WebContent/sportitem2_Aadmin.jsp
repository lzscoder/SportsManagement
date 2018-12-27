<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
  <%@  page  import="java.util.ArrayList" %>
 <%@ page import="com.createXiangMuAnPai.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>项目安排</title>
<link rel="stylesheet" type="text/css" href="web.css" />
<link rel="stylesheet" type="text/css" href="button.css" />
</head>
<body>
<%
if(session.getAttribute("USERNAME")==null) {
	response.sendRedirect("login.jsp");
}
%>
<h1>运动员管理系统</h1> <br/> <br/>
<table width="1000" bgcolor="#FFFFFF"border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#804040">
    <td><table border="0" cellspacing="0" cellpadding="0" class="nav">
  <tr>
    <td width="120" height="45" align="center" valign="middle"><a href="index_Aadmin.jsp">赛事概况</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="arrange_Aadmin.jsp">查看赛程</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="sportitem_Aadmin.jsp">项目安排</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="input_Aadmin.jsp">成绩录入</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="score_Aadmin.jsp">成绩榜</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="login.jsp">退出系统</a></td>
  </tr>
    </table>
</td>
  </tr>
</table>
<table style="margin-left:560px">
<tr>
    <td>
    <h2> 项目安排</h2>
    </td>
  </tr>
</table><br/>
<form action="" method="post">
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center" width="300px">运动员编号</td>
<td align="center" width="300px">学院</td>
<td align="center" width="150px">专业</td>
<td align="center" width="50px">年级</td>
<td align="center" width="100px">姓名</td>
<td align="center" width="50px">组别</td>
<td align="center" width="50px">位置</td>
</tr>
<%
String item = request.getParameter("sportitem");
ArrayList<ArrayList<String>> list2 = XiangMuAnPai.saiChengAnPai1(item);

for(int i=0;i<list2.size();i++){%>
<tr>
<td align="center" width="300px"><%=list2.get(i).get(0)%></td>
<td align="center" width="300px"><%=list2.get(i).get(1) %></td>
<td align="center" width="200px"><%=list2.get(i).get(2) %></td>
<td align="center" width="50px"><%=list2.get(i).get(3) %></td>
<td align="center" width="100px"><%=list2.get(i).get(4) %></td>
<td align="center" width="50px"><%=list2.get(i).get(5) %></td>
<td align="center" width="50px"><%=list2.get(i).get(6) %></td>
</tr>
<%}%>
</table><br/>
  <table width="1000">
              <tr>
                <td  align="center" >
                <button type="submit" name="sub"  class="button button-caution button-rounded button-small" >自动提交</button>
                <input type="button" name="back"  value="返回" class="button button-caution button-rounded button-small" onclick="location='http://localhost:8080/SportsManagement/sportitem_Aadmin.jsp'"></input>
                </td>
                
             </tr>
       </table><br/><br/>

</form>
    
  <%
  String s = request.getParameter("sub");
  if(s!=null) {
	  list2 = XiangMuAnPai.saiChengAnPai2(item);
  }
  %>
  
<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>
</html>