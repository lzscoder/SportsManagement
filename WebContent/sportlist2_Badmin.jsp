<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
 <%@  page  import="com.college.*" %>
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
if(session.getAttribute("USERNAME")==null) {
	response.sendRedirect("login.jsp");
}
%>
<%

String UserName = (String) session.getAttribute("USERNAME");
String spitem = request.getParameter("sportitem");
ArrayList<ArrayList<String>> list = RaceList.getRaceList(spitem, UserName);
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
<td align="center">运动员编号</td>
<td align="center">学号</td>
<td align="center">专业</td>
<td align="center">年级</td>
<td align="center">班级</td>
<td align="center">姓名</td>
</tr>
<%for(int i=0;i<list.size();i++){%>
<tr>
<td align="center"><%=list.get(i).get(0) %></td>
<td align="center"><%=list.get(i).get(1) %></td>
<td align="center"><%=list.get(i).get(4) %></td>
<td align="center"><%=list.get(i).get(3) %></td>
<td align="center"><%=list.get(i).get(5) %></td>
<td align="center"><%=list.get(i).get(2) %></td>

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