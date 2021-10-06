<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
<%-- ------The following is style element for alert box----- --%>
<%-- ------------from here till -------------------- --%>
<%--  <style>
.alert {
    padding: 20px;
    background-color: #30bfff;
    color: white;
    margin-top:46px;
    
}

       
.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}    
</style> --%>
<%--  ------------------------------here-------------------------------- --%>
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
background-image:url("login.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:hidden;
}
</style>

<style>
.box2{
      height:162px;
      width:565px;
      padding:20px;
      margin:100px auto;
      box-shadow: 0px 0px 10px 2px grey;
      border:10px solid gba(33, 33, 33, 0);;
      border-bottom-left-radius:129px;
      border-top-right-radius:129px;
      background-size:cover;
      
    }
    .box2:hover{
    box-shadow: 0 0 11px rgba(33,33,33,.2);}
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
<%-- input button styling --%>
<style>   
input[type=button], input[type=submit], input[type=reset] {   
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 7px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
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
</ul>
<%--   -------The following div  block is used for alert box ------%>
<%-- -------------- from here till-------------- --%>
<%-- <div class="alert">
<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sign Up Successful,Please Login!</strong> 
</div> --%>

<%--  ----------here.-------   --%>
<style>

.box3{
border:none;
margin-top:20px;
}
</style>


<form action="sign_in" method="post">
<div class="box2"><h2 align="center">LOGIN</h2>
<div class="box3">
		<table  cellspacing="5px" cellpadding="4px" align="center" >
 
			<tr>
				<td><label>Username</label></td>
				<td><input type="text" name="username"  /></td>
			</tr>
				<tr>
				<td><label>Password</label></td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
			<td><input type="submit" value="Login" /></td>
			</tr>
		</table> 
		</form> 
		</div>
		</div>

 
</body>
</html>