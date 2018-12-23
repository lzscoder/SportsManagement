<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page  import="com.sportproject.*" %>
  <%@  page  import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>赛程安排</title>
<link rel="stylesheet" type="text/css" href="web.css" />
<link rel="stylesheet" type="text/css" href="button.css" />
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
    <td width="120" height="45" align="center" valign="middle"><a href="">赛程安排</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="">项目安排</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="">成绩录入</a></td>
    <td width="120" height="45" align="center" valign="middle"><a href="">成绩榜</a></td>
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
<form>
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
<td align="center" width="300px">
<select name="1_8am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="1_8am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px">
<select name="1_9am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="1_9am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px">
<select name="1_10am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="1_10am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px">
<select name="1_2pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="1_2pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px">
<select name="1_3pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="1_3pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
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
<td align="center" width="300px">
<select name="2_8am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="2_8am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px">
<select name="2_9am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="2_9am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px">
<select name="2_10am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="2_10am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px">
<select name="2_2pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="2_2pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px">
<select name="2_3pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="2_3pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
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
<td align="center" width="300px">
<select name="3_8am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="3_8am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px">
<select name="3_9am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="3_9am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px">
<select name="3_10am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="3_10am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px">
<select name="3_2pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="3_2pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px">
<select name="3_3pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="3_3pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
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
<td align="center" width="300px">
<select name="4_8am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="4_8am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px">
<select name="4_9am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="4_9am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px">
<select name="4_10am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="4_10am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px">
<select name="4_2pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="4_2pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px">
<select name="4_3pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="4_3pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
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
<td align="center" width="300px">
<select name="5_8am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="5_8am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px">
<select name="5_9am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="5_9am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px">
<select name="5_10am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="5_10am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px">
<select name="5_2pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="5_2pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px">
<select name="5_3pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="5_3pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
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
<td align="center" width="300px">
<select name="6_8am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="6_8am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px">
<select name="6_9am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="6_9am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px">
<select name="6_10am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="6_10am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px">
<select name="6_2pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="6_2pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px">
<select name="6_3pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="6_3pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
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
<td align="center" width="300px">
<select name="7_8am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="7_8am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上9：00-10：00</td>
<td align="center" width="300px">
<select name="7_9am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="7_9am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

<tr>
<td align="center" width="400px" bgcolor="#b64747">早上10：00-11：00</td>
<td align="center" width="300px">
<select name="7_10am_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="7_10am_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午2：00-3：00</td>
<td align="center" width="300px">
<select name="7_2pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="7_2pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>
<tr>
<td align="center" width="400px" bgcolor="#b64747">下午3：00-4：00</td>
<td align="center" width="300px">
<select name="7_3pm_sportitem"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
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
</td>
<td align="center" width="300px">
<select name="7_3pm_place"style="width: 300px;color:#b64747;border: 1px solid #800000;"> 
<option value=""></option> 
<option value="01">东区田径场</option> 
<option value="02">西区田径场</option> 
<option value="03">南区田径场</option> 
<option value="04">1号体育馆</option> 
<option value="05">2号体育馆</option> 
<option value="06">3号体育馆</option> 
</select> 
</td>
</tr>

</table><br/>

<table width="1000">
<tr>
   <td  align="center" ><input type="submit" value="确认" class="button button-caution button-rounded " ></td>
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