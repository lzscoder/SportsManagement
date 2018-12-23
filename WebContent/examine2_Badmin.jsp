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

<%

String UserName = (String) session.getAttribute("USERNAME");
String spitem = request.getParameter("sportitem");
ArrayList<ArrayList<String>> list = ChooseInCollege.getlist(spitem, UserName);
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
<table>
<tr>
    <td>
    <h2> 运动员名单</h2>
    </td>
  </tr>
</table><br/>
<table border="2" width="1000" >
<tr>
<tr bgcolor="#b64747">
<td align="center">学号</td>
<td align="center">专业</td>
<td align="center">年级</td>
<td align="center">班级</td>
<td align="center">姓名</td>
<td align="center">录用</td>
</tr>
<%for(int i=0;i<list.size();i++){%>
<tr>
<td align="center"> <%=list.get(i).get(0)%></td>
<td align="center"> </td>
<td align="center"> <%=list.get(i).get(2)%></td>
<td align="center"> <%=list.get(i).get(3)%></td>
<td align="center"> <%=list.get(i).get(1)%></td>

<td align="center"><input type="submit" value="录用" onclick="add(this)" /></td>
</tr>
<%}%>

</table>
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
    <h2> 入选名单</h2>
    </td>
  </tr>
</table><br/>
<form>
        <table border="2"width="1000"  >
            <thead>
                <tr bgcolor="#b64747">
                <th>学号</th>
                <th >专业</th>
                <th >年级</th>
                <th >班级</th>
                <th>姓名</th>
                <th>取消</th>
                </tr>
            </thead>
            <tbody id="goods">
               
            </tbody>
            <tfoot>
             <tr>

               <td align="center" colspan="6"><input type="submit" value="提交" class="button button-caution button-rounded button-small" ></td>
             </tr>  
                
            </tfoot>
            
        </table> <br/>
        </form>
       <form action="examine_Badmin.jsp">
            <table width="1000">
              <tr>
                <td  align="right" ><input type="submit" value="返回" class="button button-caution button-rounded button-small" ></td>
             </tr>
       </table><br/><br/>
      </form> 
 
    </body>
    <script type="text/javascript">
        //this js中指当前对象
        function add(btn){
            var tr=btn.parentNode.parentNode;
            var tds=tr.getElementsByTagName("td");
            var sutid=tds[0].innerHTML;
            var stumajor=tds[1].innerHTML;
            var stugrade=tds[2].innerHTML;
            var stuclass=tds[3].innerHTML;
            var stuname=tds[4].innerHTML;
            var tbody=document.getElementById("goods");
            var row=tbody.insertRow();
            row.innerHTML="<td align='center'>"+sutid+"</td>"+
        "<td align='center'>"+stumajor+"</td>"+
        "<td align='center'>"+stugrade+"</td>"+
        "<td align='center'>"+stuclass+"</td>"+
        "<td align='center'>"+stuname+"</td>"+
        "<td align='center'>"+
            "<input type='button' value='X' onclick='del(this)'/>"+
        "</td>"+
        "</tr>"

        }
       
        function change(btn,n){
        var inputs = btn.parentNode.getElementsByTagName("input");
        var amount = parseInt(inputs[1].value);
        if(amount<=1 && n<0){
            return;
        }
        inputs[1].value = amount + n;
        amount = inputs[1].value;
        var tr = btn.parentNode.parentNode;
        var tds = tr.getElementsByTagName("td");
        var price = parseFloat(tds[1].innerHTML);
        var m = price * amount;
        tds[3].innerHTML = m;
        total();
    }

        function del(i){
            var tr=i.parentNode.parentNode;
            tr.parentNode.removeChild(tr);
            total();
        }
    </script>
  
  
  
  
<table height="50" bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>
</html>