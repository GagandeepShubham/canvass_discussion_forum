<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login Success</title>
<style>
body {margin:0;}

ul {
    list-style-type: none;
    margin: 0 auto;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    position: fixed;
    top: 0;
    width: 100%;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
</style>
<style>
body{
background-image:url("trianglify.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:hidden;
}
</style>
<style>
.box{
   
    height: 172px;
    width: 445px;
    border: solid #f4ee3100;
    padding: 6px;
    margin-left: 411px;
    margin-top: 118px;
}
.box:hover{
box-shadow: 0 0 11px rgba(33,33,33,.2);}
}
</style>
<style>
.box1{
   
    height: 108px;
    width: 445px;
    border: solid #f4ee3100;
    padding: 6px;
    margin-left: 411px;
    margin-top: 24px;
    
    text-color:#F7D969;
    
}
.box1:hover{
box-shadow: 0 0 11px rgba(33,33,33,.2);}
}
</style>
<style>
a:link, a:visited {
    background-color: #4caf50;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}
a:hover, a:active {
    background-color: green;
    color: white;
}
</style>
</head>
<body>
<ul>
  <li><a class="active" href="NewFile.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="about.jsp">About</a></li>
  
</ul>
<div class="box">
<table align="center">
	<tr><td>
	<% String username = request.getParameter("username"); %>
<font size="5">Welcome</font> <font size="7"><% out.println(username); %></font> <font size="5">You are logged in.</font></td></tr>
<tr>
</tr>
<tr>
<td>
</td>
<td>
</td>
<td><a href="register_3.jsp"><b>Logout</b></a></td></tr>
</table>
</div>
<div class="box1">
<table align="center">
<tr>
<td><a href="cat.jsp" target="_blank">See Categories</a></td>
</tr>
</table>
</div>
</body>
</html>