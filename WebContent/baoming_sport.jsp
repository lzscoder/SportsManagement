<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sportproject.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>赛事报名</title>
<link rel="stylesheet" type="text/css" href="web.css" />

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
    <h2> 赛事列表</h2>
    </td>
  </tr>
</table><br/>
<form action="" method="post">
<table border="2" width="1000" >
<tr bgcolor="#b64747">
<td align="center">项目编号</td>
<td align="center">项目名称</td>
<td align="center">性别限制</td>
<td align="center">比赛时间</td>
<td align="center">比赛地点</td>
<td align="center">报名</td>
</tr>
<%
String mUserName = (String)session.getAttribute("USERNAME");
//System.out.println(mUserName);
ArrayList<ArrayList<String>> list2 = Project.pullProject(mUserName);

for(int i=0;i<list2.size();i++){%>
<tr>
<td align="center"><input name="<%=list2.get(i).get(0)%>_add" value=<%=list2.get(i).get(0)%> type="hidden"><%=list2.get(i).get(0)%></td>
<td align="center"><%=list2.get(i).get(1)%></td>
<td align="center"><%=list2.get(i).get(2)%></td>
<td align="center"><%=list2.get(i).get(4) %></td>
<td align="center"><%=list2.get(i).get(3) %></td>
<td align="center"><button type="submit" name="baoming" value="<%=list2.get(i).get(0)%>" >报名</button></td>
</tr>
<%}%>
<%
String s= request.getParameter("baoming");
if(s!=null) {
	Project.pushProject(s, mUserName);
}
%>
</table>
</form>
<table>
<tr>
    <td>
    <h2>--------------------------------------------------------------------------------------------------</h2>
    </td>
  </tr>
</table>
<div style="margin-left:0px">
<table>
<tr>
    <td>
    <h2> 已报项目</h2>
    </td>
  </tr>
</table>
</div>
<br/>
<form action="" method="post">
        <table border="2" width="1000"  >
            <thead>
                <tr bgcolor="#b64747">
                <th>项目编号</th>
                <th >项目名称</th>
                <th >比赛时间</th>
                <th >比赛地点</th>
                <th>退选</th>
                </tr>
            </thead>
            <tbody >
            <%
            ArrayList<ArrayList<String>> list3 = Project.selectProject(mUserName);
            for(int i=0;i<list3.size();i++){%>
               <tr>
                 <td align="center"><input name="<%=list3.get(i).get(0)%>_delete" value=<%=list3.get(i).get(0)%> type="hidden"><%=list3.get(i).get(0)%></td>
                 <td align="center"><%=list3.get(i).get(1)%></td>
                 <td align="center"><%=list3.get(i).get(2)%></td>
                 <td align="center"><%=list3.get(i).get(3)%></td>
                 <td align="center"> <button type="submit" name="tuixuan" value="<%=list3.get(i).get(0)%>" >退选</button> </td>
               </tr>
              <%}%>
            </tbody>
            <tfoot>

                
            </tfoot>
            
        </table><br/><br/><br/>
    </form>
    </body>
<%
String t= request.getParameter("tuixuan");
if(t!=null) {
	Project.deleteProject(t, mUserName);
}
%>
  
 
   
<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>
</html>