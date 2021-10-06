<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>

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
    border: 2px solid #ffc107;
    border-radius: 24px;
    resize: vertical;
     background-color:#22c18c;
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
    border: 2px solid #FFC107;
    border-radius: 24px;
    background-color: #3CBC8D;
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

<%-- giving the background --%>
<style>
body{
background-image:url("cbg5.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:hidden;
}

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
</ul>
<div class="container">
  <form action="topics_write" method="post">
    <div class="row">
      <div class="col-10">
        <label for="topic_cat">Category Id</label>
      </div>
      <div class="col-90">
        <input type="text" id="topic_cat" name="topic_cat" placeholder="Enter the category Id here..">
      </div>
    </div>
    <div class="row">
      <div class="col-10">
        <label for="topic_by">Posted By</label>
      </div>
      <div class="col-90">
        <input type="text" id="topic_by" name="topic_by" placeholder="Your username..">
      </div>
    </div>
    
    <div class="row">
      <div class="col-10">
        <label for="topic_date">Date</label>
      </div>
      <div class="col-90">
        <input type="date" id="topic_date" name="topic_date" placeholder="date..">
      </div>
    </div>
    
    <div class="row">
      <div class="col-10">
        <label for="subject">Question/Topic</label>
      </div>
      <div class="col-90">
        <textarea id="topic_subject" name="topic_subject" placeholder="Write something.." style="height:200px"></textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>


</body>
</html>