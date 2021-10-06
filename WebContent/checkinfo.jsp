<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>checking question saved or not?</title>
<%-- NAVIGATION BAR --%>
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
<%-- link tag styling --%>
<style>
a:link, a:visited {
    background-color:  #4caf50;
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
<%-- giving the background --%>
<style>
body{
background-image:url("bg-10-full.jpg");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:hidden;
}
</style>

<style>
.steps{
      height:295px;
      width:547px;
      padding:20px;
      margin:100px auto;
      box-shadow: 0px 0px 10px 2px grey;
      border:10px none #b9afaf05;
      background-size:cover;
      border-radius:45px
      
    }
    .steps:hover{
                 box-shadow: 0 0 11px rgba(33,33,33,.2);
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
<div>
<h2 align="center"style="margin-top:20px;">Kindly check whether your question/answer is Posted or not!</h2>
<div class="steps" align="center">
<table style="margin-top:50px;">
<tr>
<td align="center"><h3>Steps to Check</h3></td>
</tr>
<tr>
<td>
<li>Goto the Category page by clicking on the button below.</li>
</td>
</tr>
<tr>
<td>
<li>See what is the category Id of the topic of your question.</li></td>
</tr>
<tr><td>
<li>Enter your Category Id in the below Search box.</li></td></tr>
<tr><td>

<li>Now see whether your question/answer is posted correctly or not?</li></td></tr>

<tr><td>
<a href="cat.jsp">Check</a></td></tr>
</table>
</div>
</div>
</body>
</html>