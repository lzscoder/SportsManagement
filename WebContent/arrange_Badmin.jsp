<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
  <%@  page  import="java.util.ArrayList" %>
<%@ page import="com.createXiangMuAnPai.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查看赛程</title>
<link rel="stylesheet" type="text/css" href="web.css" />
<link rel="stylesheet" type="text/css" href="button.css" />
</head>
<body>

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
</table><br>
<table style="margin-left:550px">
<tr>
    <td>
    <h2 style="font-size:33px" >赛程安排</h2>
    </td>
  </tr>
</table>
<%

ArrayList<ArrayList<String>> list2 = XiangMuAnPai.selectSaiChengAnPai();

%>
<table>
<tr>
    <td>
    <h2  >12月1号</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr >
<td align="center" width="400px"></td>
<td align="center" width="300px"bgcolor="#b64747">项目名称</td>
<td align="center" width="300px"bgcolor="#b64747">比赛场地</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上8：00-9：00</td>
<td align="center" width="300px"><%=list2.get(0).get(0)%></td>
<td align="center" width="300px"><%=list2.get(0).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px"><%=list2.get(1).get(0)%></td>
<td align="center" width="300px"><%=list2.get(1).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px"><%=list2.get(2).get(0)%></td>
<td align="center" width="300px"><%=list2.get(2).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px"><%=list2.get(3).get(0)%></td>
<td align="center" width="300px"><%=list2.get(3).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px"><%=list2.get(4).get(0)%></td>
<td align="center" width="300px"><%=list2.get(4).get(1)%></td>
</tr>
</table><br/>







<table>
<tr>
    <td>
    <h2  >12月2号</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr >
<td align="center" width="400px"></td>
<td align="center" width="300px"bgcolor="#b64747">项目名称</td>
<td align="center" width="300px"bgcolor="#b64747">比赛场地</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上8：00-9：00</td>
<td align="center" width="300px"><%=list2.get(5).get(0)%></td>
<td align="center" width="300px"><%=list2.get(5).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px"><%=list2.get(6).get(0)%></td>
<td align="center" width="300px"><%=list2.get(6).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px"><%=list2.get(7).get(0)%></td>
<td align="center" width="300px"><%=list2.get(7).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px"><%=list2.get(8).get(0)%></td>
<td align="center" width="300px"><%=list2.get(8).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px"><%=list2.get(9).get(0)%></td>
<td align="center" width="300px"><%=list2.get(9).get(1)%></td>
</tr>
</table><br/>









<table>
<tr>
    <td>
    <h2  >12月3号</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr >
<td align="center" width="400px"></td>
<td align="center" width="300px"bgcolor="#b64747">项目名称</td>
<td align="center" width="300px"bgcolor="#b64747">比赛场地</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上8：00-9：00</td>
<td align="center" width="300px"><%=list2.get(10).get(0)%></td>
<td align="center" width="300px"><%=list2.get(10).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px"><%=list2.get(11).get(0)%></td>
<td align="center" width="300px"><%=list2.get(11).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px"><%=list2.get(12).get(0)%></td>
<td align="center" width="300px"><%=list2.get(12).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px"><%=list2.get(13).get(0)%></td>
<td align="center" width="300px"><%=list2.get(13).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px"><%=list2.get(14).get(0)%></td>
<td align="center" width="300px"><%=list2.get(14).get(1)%></td>
</tr>
</table><br/>








<table>
<tr>
    <td>
    <h2  >12月4号</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr >
<td align="center" width="400px"></td>
<td align="center" width="300px"bgcolor="#b64747">项目名称</td>
<td align="center" width="300px"bgcolor="#b64747">比赛场地</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上8：00-9：00</td>
<td align="center" width="300px"><%=list2.get(15).get(0)%></td>
<td align="center" width="300px"><%=list2.get(15).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px"><%=list2.get(16).get(0)%></td>
<td align="center" width="300px"><%=list2.get(16).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px"><%=list2.get(17).get(0)%></td>
<td align="center" width="300px"><%=list2.get(17).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px"><%=list2.get(18).get(0)%></td>
<td align="center" width="300px"><%=list2.get(18).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px"><%=list2.get(19).get(0)%></td>
<td align="center" width="300px"><%=list2.get(19).get(1)%></td>
</tr>
</table><br/>











<table>
<tr>
    <td>
    <h2  >12月5号</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr >
<td align="center" width="400px"></td>
<td align="center" width="300px"bgcolor="#b64747">项目名称</td>
<td align="center" width="300px"bgcolor="#b64747">比赛场地</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上8：00-9：00</td>
<td align="center" width="300px"><%=list2.get(20).get(0)%></td>
<td align="center" width="300px"><%=list2.get(20).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px"><%=list2.get(21).get(0)%></td>
<td align="center" width="300px"><%=list2.get(21).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px"><%=list2.get(22).get(0)%></td>
<td align="center" width="300px"><%=list2.get(22).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px"><%=list2.get(23).get(0)%></td>
<td align="center" width="300px"><%=list2.get(23).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px"><%=list2.get(24).get(0)%></td>
<td align="center" width="300px"><%=list2.get(24).get(1)%></td>
</tr>
</table><br/>










<table>
<tr>
    <td>
    <h2  >12月6号</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr >
<td align="center" width="400px"></td>
<td align="center" width="300px"bgcolor="#b64747">项目名称</td>
<td align="center" width="300px"bgcolor="#b64747">比赛场地</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上8：00-9：00</td>
<td align="center" width="300px"><%=list2.get(25).get(0)%></td>
<td align="center" width="300px"><%=list2.get(25).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px"><%=list2.get(26).get(0)%></td>
<td align="center" width="300px"><%=list2.get(26).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px"><%=list2.get(27).get(0)%></td>
<td align="center" width="300px"><%=list2.get(27).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px"><%=list2.get(28).get(0)%></td>
<td align="center" width="300px"><%=list2.get(28).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px"><%=list2.get(29).get(0)%></td>
<td align="center" width="300px"><%=list2.get(29).get(1)%></td>
</tr>
</table><br/>





<table>
<tr>
    <td>
    <h2  >12月7号</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr >
<td align="center" width="400px"></td>
<td align="center" width="300px"bgcolor="#b64747">项目名称</td>
<td align="center" width="300px"bgcolor="#b64747">比赛场地</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上8：00-9：00</td>
<td align="center" width="300px"><%=list2.get(30).get(0)%></td>
<td align="center" width="300px"><%=list2.get(30).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px"><%=list2.get(31).get(0)%></td>
<td align="center" width="300px"><%=list2.get(31).get(1)%></td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px"><%=list2.get(32).get(0)%></td>
<td align="center" width="300px"><%=list2.get(32).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px"><%=list2.get(33).get(0)%></td>
<td align="center" width="300px"><%=list2.get(34).get(1)%></td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px"><%=list2.get(35).get(0)%></td>
<td align="center" width="300px"><%=list2.get(35).get(1)%></td>
</tr>
</table><br/>



<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>
</html>