<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人比赛详情</title>
<link rel="stylesheet" type="text/css" href="web.css" />

</head>
<body>

<%

 %>
<h1>运动员管理系统</h1> <br/> <br/>
<table width="1000" bgcolor="#FFFFFF"border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#804040">
    <td><table border="0" cellspacing="0" cellpadding="0" class="nav">
  <tr>
    <td width="150" height="45" align="center" valign="middle"><a href="index_sport.jsp">赛事概况</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="baoming_sport.jsp">赛事报名</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="information_sport.jsp">个人比赛详情</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="score_sport.jsp">成绩查询</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="login.jsp">退出系统</a></td>
  </tr>
    </table>
</td>
  </tr>
</table>

<table style="margin-left:550px" >
<tr>
    <td>
    <h2> 个人比赛信息</h2>
    </td>
  </tr>
</table><br/>

<table border="2" width="1000" >
<tr>
<td align="center" bgcolor="#b64747" width="200px">学院</td>
<td align="center" width="200px">数学与信息学院</td>
<td align="center" bgcolor="#b64747" width="200px">专业</td>
<td align="center" width="200px">计算机科学与技术</td>
<td align="center"bgcolor="#b64747" width="100px">年级</td>
<td align="center" width="100px">大二</td>
</tr>
<tr>
<td align="center" bgcolor="#b64747" width="200px">运动员编号</td>
<td align="center" width="200px">105114514</td>
<td align="center" bgcolor="#b64747" width="200px">学号</td>
<td align="center" width="200px">105032016104</td>
<td align="center"bgcolor="#b64747" width="100px">姓名</td>
<td align="center" width="100px">小墨</td>
</tr>


</table>
<table border="2" width="1000" >
<tr bgcolor="#b64747">
<td align="center" width="400px">比赛时间</td>
<td align="center"width="200px">比赛项目</td>
<td align="center"width="100px">组别</td>
<td align="center"width="100px">序号</td>
<td align="center"width="200px">比赛场地</td>
</tr>
<%for(int i=0;i<3;i++){%>
<tr >
<td align="center"width="400px">2018-12-1 8:00-9:00</td>
<td align="center"width="200px">男子100米 </td>
<td align="center"width="100px">2 </td>
<td align="center"width="100px">5 </td>
<td align="center"width="200px">东区田径场 </td>
</tr>
<%}%>
</table><br/><br/>
  
  
  
  
<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>
</html>