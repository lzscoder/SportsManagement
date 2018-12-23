<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
  <%@  page  import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>项目安排</title>
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
    <h2> 项目安排</h2>
    </td>
  </tr>
</table><br/>
<form action="">
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center" width="300px">运动员编号</td>
<td align="center" width="300px">学院</td>
<td align="center" width="150px">专业</td>
<td align="center" width="50px">年级</td>
<td align="center" width="100px">姓名</td>
<td align="center" width="50px">组别</td>
<td align="center" width="50px">位置</td>
</tr>
<%for(int i=0;i<1;i++){%>
<tr>
<td align="center" width="300px"></td>
<td align="center" width="300px"></td>
<td align="center" width="200px"></td>
<td align="center" width="50px"></td>
<td align="center" width="100px"></td>
<td align="center" width="50px">
<select name="group"style="width: 50px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">1</option> 
<option value="02">2</option> 
<option value="03">3</option> 
<option value="04">4</option> 
<option value="05">5</option> 
<option value="06">6</option> 
<option value="07">7</option> 
<option value="08">8</option> 
<option value="09">9</option> 
<option value="10">10</option> 
<option value="11">11</option> 
<option value="12">12</option> 
</select> 
</td>
<td align="center" width="50px">
<select name="seat"style="width: 50px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">1</option> 
<option value="02">2</option> 
<option value="03">3</option> 
<option value="04">4</option> 
<option value="05">5</option> 
<option value="06">6</option> 
<option value="07">7</option> 
<option value="08">8</option> 
<option value="09">9</option> 
<option value="10">10</option> 
<option value="11">11</option> 
<option value="12">12</option> 
<option value="13">13</option> 
<option value="14">14</option> 
<option value="15">15</option> 
<option value="16">16</option> 
<option value="17">17</option> 
<option value="18">18</option> 
<option value="19">19</option> 
<option value="20">20</option> 
</select> 
</td>
</tr>
<%}%>
</table><br/>
  <table width="1000">
              <tr>
                <td  align="center" >
                <input type="submit" value="提交" class="button button-caution button-rounded button-small" >
                </td>
                
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