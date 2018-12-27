<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.selectScores.*" %>
     <%@  page  import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人成绩</title>
<link rel="stylesheet" type="text/css" href="web.css" />

</head>
<body>
<%
if(session.getAttribute("USERNAME")==null) {
	response.sendRedirect("login.jsp");
}
%>
<%
String userName = (String) session.getAttribute("USERNAME");
ArrayList<ArrayList<String>> list = SelectScores.SelectOwnScore(userName);
 %>
<h1>运动员管理系统</h1> <br/> <br/>
<table width="1000" bgcolor="#FFFFFF"border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#804040">
    <td><table border="0" cellspacing="0" cellpadding="0" class="nav">
  <tr>
    <td width="120" height="45" align="center" valign="middle"><a href="index_sport.jsp">赛事概况</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="arrange_sport.jsp">查看赛程</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="baoming_sport.jsp">赛事报名</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="information_sport.jsp">个人比赛详情</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="score_sport.jsp">成绩查询</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="login.jsp">退出系统</a></td>
  </tr>
    </table>
</td>
  </tr>
</table>

<table >
<tr>
    <td>
    <h2> 个人成绩</h2>
    </td>
  </tr>
</table><br/>

<table border="2" width="1000" >
<thead>
<tr bgcolor="#b64747">
<td align="center" width="400px">比赛项目</td>
<td align="center"width="400px">比赛成绩</td>
<td align="center"width="100px">名次</td>
<td align="center"width="100px">积分</td>
</tr>
</thead>
<tbody>
<%for(int i=0;i<list.size();i++){%>
<tr >
<td align="center"width="400px"><%=list.get(i).get(0) %></td>
<td align="center"width="200px"><%=list.get(i).get(1) %></td>
<td align="center"width="100px"><%=list.get(i).get(2) %></td>
<td align="center"width="100px"><%=list.get(i).get(3) %></td>
</tr>
<%}%>
</tbody>
<tfoot>
 
</tfoot>
</table><br/><br/>
  
  
  
  
<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>
</html>