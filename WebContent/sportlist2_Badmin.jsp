<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
  <%@  page  import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>正赛名单</title>
<link rel="stylesheet" type="text/css" href="web.css" />
<link rel="stylesheet" type="text/css" href="button.css" />
</head>
<body>

<%

String UserName = (String) session.getAttribute("USERNAME");
String spitem = request.getParameter("sportitem");
 %>
<h1>运动员管理系统</h1> <br/> <br/>
<table width="1000" bgcolor="#FFFFFF"border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#804040">
    <td><table border="0" cellspacing="0" cellpadding="0" class="nav">
  <tr>
    <td width="150" height="45" align="center" valign="middle"><a href="index_Badmin.jsp">赛事概况</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="examine_Badmin.jsp">资格审核</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="sportlist_Badmin.jsp">正赛名单</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="score_Badmin.jsp">成绩榜</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="login.jsp">退出系统</a></td>
  </tr>
    </table>
</td>
  </tr>
</table>
<table style="margin-left:570px">
<tr>
    <td>
    <h2> 正赛名单</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center"width="400">学号</td>
<td align="center"width="400">专业</td>
<td align="center"width="50">年级</td>
<td align="center"width="50">班级</td>
<td align="center"width="100">姓名</td>
</tr>
<%for(int i=0;i<1;i++){%>
<tr>
<td align="center"width="400">105032016104</td>
<td align="center"width="400">计算机科学与技术 </td>
<td align="center"width="50">大二</td>
<td align="center"width="50">2 </td>
<td align="center"width="100">小明</td>

</tr>
<%}%>

</table><br/>
       <form action="sportlist_Badmin.jsp">
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