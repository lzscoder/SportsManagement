<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.shool.*" %>
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
String itemID = request.getParameter("sportitem");
ArrayList<ArrayList<String>> list = InputReasult.getListGR(itemID);
ArrayList<ArrayList<String>> list1 = InputReasult.gelistXY();
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
    <h2> 成绩录入</h2>
    </td>
  </tr>
</table><br/>
<form action="" method="post">
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center">运动员编号/学院编号</td>
<td align="center">姓名/学院名称</td>
<td align="center">成绩</td>
<td align="center">排名</td>
<td align="center">积分</td>
</tr>

<%if(list.size()>0) {for(int i=0;i<list.size();i++){%>
<tr>
<td align="center"><input name="<%=list.get(i).get(0) %>_id" value=<%=list.get(i).get(0) %> type="hidden"><%=list.get(i).get(0) %> </td>
<td align="center"><%=list.get(i).get(2) %> </td>
<td align="center"> <input  type="text" name="<%=list.get(i).get(0) %>_score"  style="BACKGROUND-COLOR:#f9c69b;"></td>
<td align="center"> <input  type="text" name="<%=list.get(i).get(0) %>_paiming"  style="BACKGROUND-COLOR:#f9c69b;"></td>
<td align="center"> <input  type="text" name="<%=list.get(i).get(0) %>_jifen"   style="BACKGROUND-COLOR:#f9c69b;"></td>
</tr>
<%}}
else {
	for(int i=0;i<list1.size();i++) {%>
<tr>
<td align="center"><input name="<%=list1.get(i).get(0)%>_id"  value=<%=list1.get(i).get(0) %> type="hidden"><%=list1.get(i).get(0) %> </td>
<td align="center"><%=list1.get(i).get(1) %> </td>
<td align="center"> <input  type="text" name="<%=list1.get(i).get(0) %>_score"  style="BACKGROUND-COLOR:#f9c69b;"></td>
<td align="center"> <input  type="text" name="<%=list1.get(i).get(0) %>_paiming"   style="BACKGROUND-COLOR:#f9c69b;"></td>
<td align="center"> <input  type="text" name="<%=list1.get(i).get(0) %>_jifen"   style="BACKGROUND-COLOR:#f9c69b;"></td>
</tr>
<%	}
} %>
</table>
<table width="1000">
<tr>
    <td align="center">
   <button type="submit" name="tijiao" class="button button-caution button-rounded button-small" >提交</button>
   </td>
</tr>
</table>
 </form>
 <%
 if(list.size()>0) {
	 for(int i=0;i<list.size();i++) {
		 String YunDongYBH = list.get(i).get(0);
		 String s = list.get(i).get(0);
		 String score = request.getParameter(s+"_score");
		 String paiming = request.getParameter(s+"_paiming");
		 String jifen = request.getParameter(s+"_jifen");
		 if(jifen!=null&&paiming!=null){
		 	int j = Integer.parseInt(jifen);
		 	int p = Integer.parseInt(paiming);
		 	InputReasult.inputGeRen(YunDongYBH, itemID, score, j, p);
		 }
		 //out.print(YunDongYBH);out.print(itemID);out.print(score);out.print(jifen);out.print(paiming);
	 }
 }else {
	for(int i=0;i<list1.size();i++) {
		 String XueYuanBH = list1.get(i).get(0);
		 String s = list1.get(i).get(0);
		 String score = request.getParameter(s+"_score");
		 String paiming = request.getParameter(s+"_paiming");
		 String jifen = request.getParameter(s+"_jifen");
		 if(jifen!=null&&paiming!=null){
			 	int j = Integer.parseInt(jifen);
			 	int p = Integer.parseInt(paiming);
			 	InputReasult.inputTuanTi(XueYuanBH, itemID, score, j, p);
		}
		// out.print(XueYuanBH);out.print(itemID);out.print(score);out.print(jifen);out.print(paiming);
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