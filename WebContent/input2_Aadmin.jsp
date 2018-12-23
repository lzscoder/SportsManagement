<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
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

<h1>运动员管理系统</h1> <br/> <br/>
<table width="1000" bgcolor="#FFFFFF"border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#804040">
    <td><table border="0" cellspacing="0" cellpadding="0" class="nav">
  <tr>
    <td width="120" height="45" align="center" valign="middle"><a href="index_Aadmin.jsp">赛事概况</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="arrange_Aadmin.jsp">赛程安排</a></td>
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
    <h2> 成绩录入</h2>
    </td>
  </tr>
</table><br/>
<form>
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center" width="350px">运动员编号</td>
<td align="center"width="150px">姓名</td>
<td align="center"width="500px">成绩</td>
</tr>
<%for(int i=0;i<1;i++){%>
<tr>
<td align="center"> </td>
<td align="center"> </td>
<td align="center"> <input  type="text" name="score" style="width:300px;BACKGROUND-COLOR:#f9c69b;"></td>
</tr>
<%}%>
</table>
  <table width="1000">
              <tr>
                <td  align="center" ><input type="submit" value="提交" class="button button-caution button-rounded button-small" ></td>
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