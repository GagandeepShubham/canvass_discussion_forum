<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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

<style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 2px solid #101010a6;
    border-radius: 24px;
    resize: vertical;
    background-color:#a5a5a547;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #ab954800;
    padding: 20px;
    margin-top: 63px;
}

.col-10 {
    float: left;
    width: 10%;
    margin-top: 6px;
}

.col-90 {
    float: left;
    width: 90%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>

<%-- styling of the input text fields --%>
<style> 
input[type=text],input[type=date],input[type=textarea] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid #101010a6;
    border-radius: 27px;
    background-color: #a5a5a547;
    color: white;
}
</style>

<%-- input button styling --%>
<style>   
input[type=button], input[type=submit], input[type=reset] {   
    background-color: #ff9800ad;
    border: none;
    color: white;
    padding: 7px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
</style>

<%-- giving the background --%>
<style>
body{
background-image:url("cmt_bg.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:scroll;
}
</style>
<body>
<ul>
  <li><a class="active" href="NewFile.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="about.jsp">About</a></li>
  <li><a href="register_1.jsp">Sign Up</a></li>
</ul>
<div class="container" align="center">
<form action="comment" method="post">
<div class="row">
      <div class="col-10">
        <label for="username">Topic Id</label>
      </div>
      <div class="col-90">
        <input type="text" id="cmt_id" name="cmt_id" placeholder="Enter Topic Id here..">
      </div>
    </div>
<div class="row">
      <div class="col-10">
        <label for="username">Username</label>
      </div>
      <div class="col-90">
        <input type="text" id="username" name="username" placeholder="Enter username here..">
      </div>
    </div>
    <div class="row">
      <div class="col-10">
        <label for="email_id">Email</label>
      </div>
      <div class="col-90">
        <input type="text" id="email_id" name="email_id" placeholder="Your email..">
      </div>
    </div>
     <div class="row">
      <div class="col-10">
        <label for="date">Date</label>
      </div>
      <div class="col-90">
        <input type="date" id="date" name="date" placeholder="date..">
      </div>
    </div>
     <div class="row">
      <div class="col-10">
        <label for="subject">Comment</label>
      </div>
      <div class="col-90">
        <textarea id="comment" name="comment" placeholder="Write comment here.." style="height:200px"></textarea>
      </div>
    </div>
     <div class="row">
      <input type="submit" value="Post">
    </div>
</form>
</div>
</body>
</html>