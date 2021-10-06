<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main</title>
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
background-image:url("bgav.png");
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
    margin-right: 150px;
    margin-left: 80px;
   
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
</head>
<body>
<ul>
  <li><a class="active" href="NewFile.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="about.jsp">About</a></li>
  <li><a href="register_1.jsp">Sign Up</a></li>
</ul>

<div class="main">
<h1 align="center" color="#999"style="margin-top:65px;">CANVASS</h1>
<font color ="black">
 <div class="box">
   <p><font size="4">CANVASS is a tool for sharing thoughts and ideas about class materials, and it is made up of forums and threads.
    It is a method of asynchronous online communication or an electronic message center. Users connect with the center via a modem or other devices,
    they can read messages posted by others and respond or leave messages on other topics.
    The CANVASS allows students to post threads (comments or responses) to forums usually created by the instructor.
    The posted threads (comments, responses) can be viewed and responded to by the instructor and other students enrolled in the course.
    </font></p>
    <p><font size="4">Discussions are a good way to encourage students to think critically about your coursework and interact with each others' ideas.
     You can create discussions around individual course lessons or for your course in general. As the instructor, you own the discussions. After you start a discussion,
      you can post comments of your own to guide students.</font></p>
         </div>
</font>
</div>

</body>
</html>