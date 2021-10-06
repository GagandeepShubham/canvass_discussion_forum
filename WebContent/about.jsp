<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About</title>
<style>
body {margin:0;}

ul {
    list-style-type: none;
    margin: 0;
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
background-image:url("cool-background new.png");
background-repeat:no-repeat;
 background-attachment: fixed;
background-size:100% 100%;                                                <%--1280px 680px; --%>
height:100%;
width:100%;
margin-top:45px;
overflow:hidden;
}
</style>

<style>
div {
    margin-right: 175px;
    margin-left: 95px;
   
}
</style>
<style>
.box{
           
           height:258px;
           width:971px;
           background-color:transparent;
           border:none;
           box-shadow:#14b5ef00;
           
           }
.box:hover{
           box-shadow: 0 0 11px rgba(33,33,33,.2);
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

<style>
.Exp{
margin-top:25px;
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
<h1 align="center" color="#999"style="margin-top:100px;">What is CANVASS?</h1>
<div class="box">

<p><font size="4">Nowadays keeping the record of everything we do is a daunting task.We might not be able to remember
 everything we do or anything we are supposed to do, all the time,just like the assignments given in colleges.
 What student does is, they just write their assignments on a plain paper and submits to the instructors,
 only to regret later at the time of exams,because they can not revise everything in a short span of time.
</font></p>
<p><font size="4">Well,if they'd have kept record of their assignments or atleast the questions,the situation would have been
   a lot different.So to kick out that situation permanently, i developed a webapp CANVASS which allows students to post threads
   (comments or responses) to forums usually created by the instructor.
   The posted threads (comments, responses) can be viewed and responded to by the instructor and other students enrolled
   in the course.
</font></p>
<p><font size="4">Besides just posting the assignments, any user can also post their questions regarding anything from the 
given categories and anyone can answer them. </font></p>

</div>
<div class="Exp" align="center">
<a href="register_1.jsp">Start Posting!</a>
</div>
</body>
</html>