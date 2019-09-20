<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>  
  <base href="<%=basePath%>"> 
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台登录</title>
	<style type="text/css">
	table{
		text-align: center;
	}
	.textSize{
		width: 120px;
		height: 25px;
	}
	* {
		margin: 0px;
		padding: 0px;
	}
	body {
		font-family: Arial, Helvetica, sans-serif;
		font-size: 12px;
		margin: 10px 10px auto;
		background-image: url(images/bb.jpg);
	}
	</style>
	<script type="text/javascript">
	//确定按钮
	function gogo(){
		document.forms[0].submit();
	}
	//取消按钮
	function cancel(){
		document.forms[0].action = "";
	}
	</script>
  </head>
  <body>
  	<form action="user/login" method="post">
	<table>
		<tr>
			<td colspan="2"><img src="images/login.gif"></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="uname" class="textSize" value="${ uname }"></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="password" name="upass" class="textSize" value="${ upass }"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="image" src="images/ok.gif" onclick="gogo()" >
				<input type="image" src="images/cancel.gif" onclick="cancel()" >
			</td>
		</tr>
	</table>
	${messageError }
	</form>
  </body>
</html>
