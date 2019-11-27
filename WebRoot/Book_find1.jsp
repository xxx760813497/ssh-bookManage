<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,pojo.User,pojo.Book"%><%@ taglib prefix="s" uri="/struts-tags" %>
<% 	User user=(User)request.getSession().getAttribute("user"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>图书管理系统</title>
	<style>
		span{
			position: absolute;
		}
		body{
			background:url("img/timg.jpg") no-repeat;
			background-size:100% 100%;
		}
		#title{
			font-size: 25px;
			position: absolute;
			left: 50px;
			top:20px;
			color: #EE9A49;
		}
		#txt{
			
			position: absolute;
			top:100px;
			left:50px;	
		}
	
		#bookaction{
			border:2px solid black;
			padding:5px;
			position: absolute;
			top:150px;
			left:50px;
		}
		#useraction{
			border:2px solid black;
			padding:5px;
			position: absolute;
			top:290px;
			left:50px;
		}
		#add{
			text-align:center;
			width:400px;
			height:300px;
			border:2px solid black;
			position: absolute;
			top:100px;
			left:400px;
		}
		.errorMessage{
			position:relative;
			left:-100px;
			padding: 0px;
			list-style-type: none;
		}
	</style>
  </head> 
  
  <body>
  	<span id="title">欢迎使用图书管理系统</span>
  	<span id="txt">系统提示：管理员${sessionScope.user.username}登录成功</span><br>
  	<span style="top:130px;left:50px">图书操作</span><br>
  	<div id="bookaction" >
  		<a href="Book_add.jsp">添加图书</a><br>
  		<a href="Book_update1.jsp">修改图书</a><br>
  		<a href="Book_find1.jsp">查询图书</a><br>
  		<a href="Book_delete.jsp">删除图书</a><br>
  	</div>  
  	<span style="top:270px;left:50px">管理员操作</span><br>
	<div id="useraction">
    	<a href="updateUser_info.jsp">更改个人信息</a><br>
    	<a href="updateUser_mima.jsp">更改密码</a><br>
    	<a href="exit">退出系统</a>
	</div>
	<div id="add">
	<s:fielderror name="Book_find1"/><br><br>
    <form action="Book_find" method="post">
    	请输入书名：<input name="bname" type="text"><br>
    	<input type="submit" value="查询此书">
    </form>
    <form action="BackHome">
    	<input type="submit" value="返回首页">
    </form>
	</div>
    
    
  </body>
</html>
