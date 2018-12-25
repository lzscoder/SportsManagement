<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <h2 style="font-size:32px;color:#c03f3f">正赛名单</h2>
    </td>
  </tr>
</table>
<table>
<tr>
    <td>
    <h2> 男子项目：</h2>
    </td>
  </tr>
</table>
<form action="sportlist2_Badmin.jsp">
<table cellspacing="20px" >
<tr>
    <td><button type="submit" name="sportitem" value="1001" class="button button-primary button-rounded button-large" >100米</button></td>
    <td><button type="submit" name="sportitem" value="1002" class="button button-primary button-rounded button-large" >200米</button></td>
    <td><button type="submit" name="sportitem" value="1003" class="button button-primary button-rounded button-large">400米</button></td>
    <td><button type="submit" name="sportitem" value="1004" class="button button-primary button-rounded button-large" >800米</button></td>
    <td><button type="submit" name="sportitem" value="1005" class="button button-primary button-rounded button-large">1500米</button></td>

  </tr>
  <tr>
    <td><button type="submit" name="sportitem" value="1006" class="button button-primary button-rounded button-large" >3000米</button></td>
   <td><button type="submit" name="sportitem" value="1007" class="button button-primary button-rounded button-large">110米栏</button></td>
    <td><button type="submit" name="sportitem" value="1008" class="button button-primary button-rounded button-large" >400米栏</button></td>
    <td><button type="submit" name="sportitem" value="1009" class="button button-primary button-rounded button-large" >4x100米</button></td>
    <td><button type="submit" name="sportitem" value="1010" class="button button-primary button-rounded button-large" >4x400米</button></td>
    
   
  </tr>
  <tr>
    <td><button type="submit" name="sportitem" value="0011" class="button button-primary button-rounded button-large" >跳高</button></td>
    <td><button type="submit" name="sportitem" value="0012" class="button button-primary button-rounded button-large" >跳远</button></td>
    <td><button type="submit" name="sportitem" value="0013" class="button button-primary button-rounded button-large" >三级跳远</button></td>
    <td><button type="submit" name="sportitem" value="0014" class="button button-primary button-rounded button-large" >撑杆跳高</button></td>
    <td><button type="submit" name="sportitem" value="0015" class="button button-primary button-rounded button-large" >铅球</button></td>
  </tr>
  <tr>
   <td><button type="submit" name="sportitem" value="0016" class="button button-primary button-rounded button-large" >标枪</button></td>
    <td><button type="submit" name="sportitem" value="0018" class="button button-primary button-rounded button-large" >十项全能</button></td>
  </tr>

</table>
</form>
<table>
<tr>
    <td>
    <h2>--------------------------------------------------------------------------------------------------</h2>
    </td>
  </tr>
</table>
<table>
<tr>
    <td>
    <h2> 女子项目：</h2>
    </td>
  </tr>
</table>
<form action="examine2_Badmin.jsp">
<table cellspacing="20px">
<tr>
    <td><button type="submit" name="sportitem" value="1119"class="button button-caution button-rounded button-large" >100米</button></td>
    <td><button type="submit" name="sportitem" value="1120" class="button button-caution button-rounded button-large">200m</button></td>
    <td><button type="submit" name="sportitem" value="1121" class="button button-caution button-rounded button-large" >400m</button></td>
    <td><button type="submit" name="sportitem" value="1122" class="button button-caution button-rounded button-large" >800m</button></td>
    <td><button type="submit" name="sportitem" value="1123" class="button button-caution button-rounded button-large" >1500m</button></td>
   

   
  </tr>
<tr>
    <td><button type="submit" name="sportitem" value="1124" class="button button-caution button-rounded button-large" >3000m</button></td>
    <td><button type="submit" name="sportitem" value="1125" class="button button-caution button-rounded button-large" >100m栏</button></td>
    <td><button type="submit" name="sportitem" value="1126" class="button button-caution button-rounded button-large" >400米栏</button></td>
    <td><button type="submit" name="sportitem" value="1127" class="button button-caution button-rounded button-large">4x100米</button></td>
    <td><button type="submit" name="sportitem" value="1128" class="button button-caution button-rounded button-large" >4x400米</button></td>
    
   
  </tr>
  <tr>
    <td><button type="submit" name="sportitem" value="0129" class="button button-caution button-rounded button-large" >跳高</button></td>
    <td><button type="submit" name="sportitem" value="0130" class="button button-caution button-rounded button-large" >跳远</button></td>
    <td><button type="submit" name="sportitem" value="0133" class="button button-caution button-rounded button-large">三级跳远</button></td>
    <td><button type="submit" name="sportitem" value="0131" class="button button-caution button-rounded button-large" >铅球</button></td>
    <td><button type="submit" name="sportitem" value="0132" class="button button-caution button-rounded button-large" >标枪</button></td>
    
  </tr>
  <tr>
  <td><button type="submit" name="sportitem" value="0134" class="button button-caution button-rounded button-large" >七项全能</button></td>
 </tr>

</table><br/>
</form>        
 
<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>


</html>