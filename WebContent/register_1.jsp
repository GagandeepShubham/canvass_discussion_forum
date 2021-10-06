<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register_1</title>
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
background-image:url("signup.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:hidden;
}
</style>
<style>
div {
    
    margin-right: 150px;
    margin-left: 80px;
   
}
</style>
<style>
.box1{
      height:295px;
      width:547px;
      padding:20px;
      margin:100px auto;
      box-shadow: 0px 0px 10px 2px grey;
      border:10px none #b9afaf05;
      background-size:cover;
      border-radius:45px
      
    }
    .box1:hover{
                 box-shadow: 0 0 11px rgba(33,33,33,.2);
               }
</style>
<%-- styling the input buttons --%>
<style> 
input[type=button], input[type=submit], input[type=reset] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 9px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
<%-- link tag styling --%>
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
  <li><a href="register_1.jsp">Sign Up</a></li>
  <li><a href="register_3.jsp">Login</a></li>
</ul>
<form action="signup" method="post">

<div class="box1">
<h1 align="center">Sign Up</h1>
<table align="center">
<tr>
<td>First Name</td>
<td><input type="text" name="first_name" size="35" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="last_name" size="35" /></td>
</tr>
<tr>
<td>UserName</td>
<td><input type="text" name="username" size="35"/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" size="35"/></td>
</tr>
<tr>
<td>Address</td>
<td><input type="text" name="address" size="35"/></td>
</tr>
<tr>
<td>Contact No</td>
<td><input type="text" name="contact" size="35"/></td>
</tr>
<tr>

<td><input type="submit" value="Sign Up"></td>
</tr>
</table>
</div>

		<%-- 	<input type="submit" value="Submit" /></form>  --%>
</body>
</html>