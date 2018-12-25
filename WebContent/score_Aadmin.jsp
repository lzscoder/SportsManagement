<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
  <%@  page  import="java.util.ArrayList" %>
<%@ page import="com.selectScores.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成绩榜</title>
<link rel="stylesheet" type="text/css" href="web.css" />
<link rel="stylesheet" type="text/css" href="button.css" />
<link rel="stylesheet" type="text/css" href="list.css" />
</head>
<body>

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
</table><br>

<table style="margin-left:550px">
<tr>
    <td>
    <h2 > 项目成绩查询</h2>
    </td>
  </tr>
</table><br/>

<div class="styled-select">
<form action="score2_Aadmin.jsp" method="get" style="margin-left:480px" > 
<select name="sportitem"> 
<option value="1001">男子100米</option> 
<option value="1002">男子200米</option> 
<option value="1003">男子400米</option> 
<option value="1004">男子800米</option> 
<option value="1005">男子1500米</option> 
<option value="1006">男子3000米</option> 
<option value="1007">男子110米栏</option> 
<option value="1008">男子400米栏</option> 
<option value="1009">男子4x100米</option> 
<option value="1010">男子4x400米</option> 
<option value="0011">男子跳高</option> 
<option value="0012">男子跳远</option> 
<option value="0013">男子三级跳远</option> 
<option value="0014">男子撑杆跳高</option> 
<option value="0015">男子铅球</option> 
<option value="0016">男子标枪</option> 
<option value="0018">男子十项全能</option> 
<option value="1119">女子100米</option> 
<option value="1120">女子200米</option> 
<option value="1121">女子400米</option> 
<option value="1122">女子800米</option> 
<option value="1123">女子1500米</option> 
<option value="1124">女子3000米</option> 
<option value="1125">女子100米栏</option> 
<option value="1126">女子400米栏</option> 
<option value="1127">女子4x100米</option> 
<option value="1128">女子4x400米</option> 
<option value="0129">女子跳高</option> 
<option value="0130">女子跳远</option> 
<option value="0133">女子三级跳远</option> 
<option value="0131">女子铅球</option> 
<option value="0132">女子标枪</option> 
<option value="0134">女子七项全能</option> 
</select> 

<input type="submit" value="查询" class="button button-caution button-rounded button-small" >

</form> 
</div>



<table style="margin-left:550px">
<tr>
    <td>
    <h2 > 学院积分排名</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center" width="600px">学院</td>
<td align="center" width="200px">积分</td>
<td align="center"width="200px">排名</td>
</tr>
<%


ArrayList<ArrayList<String>> list2 = SelectScores.GetOrderOfJiFen();

for(int i=0;i<list2.size();i++){%>
<tr>
<td align="center" width="600px"><%=list2.get(i).get(0)%></td>
<td align="center" width="200px"><%=list2.get(i).get(1)%></td>
<td align="center" width="200px"><%=list2.get(i).get(2)%></td>
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