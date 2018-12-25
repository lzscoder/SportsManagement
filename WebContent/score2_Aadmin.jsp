<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
  <%@  page  import="java.util.ArrayList" %>
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
<%
String itemname = request.getParameter("sportitem");
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
</table><br>


<table style="margin-left:550px">
<tr>
    <td>
    <h2 >项目成绩详情</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center" width="400px">学院</td>
<td align="center" width="200px">运动员编号</td>
<td align="center" width="200px">姓名</td>
<td align="center" width="100px">成绩</td>
<td align="center" width="50px">名次</td>
<td align="center"width="50px">积分</td>
</tr>
<%for(int i=0;i<1;i++){%>
<tr>
<td align="center" width="400px">数学与信息学院</td>
<td align="center" width="200px">114514</td>
<td align="center" width="200px">小明</td>
<td align="center" width="100px">10.1</td>
<td align="center" width="50px">1</td>
<td align="center"width="50px">9</td>
</tr>
<%}%>

</table><br/>
<form action="score_Aadmin.jsp">
<table width="1000">
<tr>
   <td  align="center" ><input type="submit" value="返回" class="button button-caution button-rounded button-small" ></td>
</tr>
</table><br/><br/>
</form> 

<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>
</html>