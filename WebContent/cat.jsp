<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.ResultSet" %>
 <%@page import="java.sql.Statement" %>
 <%@page import="java.sql.Connection" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exper Cat</title>  <%-- showing the db this way is cool,though it is badly in need of style,(another way to show categories --%>
<style>
ul {
  list-style-type: none;
  margin: -6px;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
 
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 10px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<%-- NAVIGATION BAR --%>

<%-- styling of the input text fields --%>
<style> 
input[type=text] {
    width: 100%;
    padding: 6px 20px;
    margin: -31px 9px;
    box-sizing: border-box;
    border: 2px solid #FFC107;
    border-radius: 4px;
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
background-image:url("cat1.jpeg");   <%-- cbg1.png --%>
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:auto;
}
</style>
<%-- link tag styling --%>


<style style="text/css">
  	.hoverTable{
		width:850px; 
		border-collapse:collapse; 
	}
	.hoverTable td{ 
		padding:7px; border: 3px solid;
	}
	/* Define the default color for all the table rows */
	.hoverTable tr{
		background: #b8d1f3;
	}
	/* Define the hover highlight color for the table row */
    .hoverTable tr:hover {
          background-color: #ffff99;
    }
</style>
<style>
#cust th{
text-align: center;
    background-color: #4CAF50;
    color: white;
}
</style>
<body>
<ul>
  <li><a href="NewFile.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="about.jsp">About</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Downloads</a>
    <div class="dropdown-content">
      <a href="ALGO.jsp">Algorithms</a>
      <a href="OS.jsp">Operating System</a>
      <a href="DBMS.jsp">DBMS</a>
      <a href="TOC.jsp">Theory of Computation</a>
      <a href="CO.jsp">Computer Organization</a>
      <a href="DL.jsp">Digital Logic</a>
      <a href="CN.jsp">Computer Networks</a>
      <a href="CD.jsp">Compiler Design</a>
      <a href="DM.jsp">Discrete Maths</a>
    </div>
  </li>
</ul>

<% String id=request.getParameter("userId");
   String driverName = "com.mysql.jdbc.Driver";
   String connectionUrl = "jdbc:mysql://localhost:3306/";
   String dbName = "project";
   String userId = "root";
   String password = "root";
   
   try {
	   Class.forName(driverName);
   } catch(ClassNotFoundException e){
	   e.printStackTrace();
   }
   
   Connection connection = null;
   Statement statement= null;
   ResultSet resultset = null;
%>

<h2 align = "center"><font><strong>categories</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="margin:150px;margin-top:5px;border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;" class="hoverTable" id="cust">
<tr>
</tr>
<tr bgcolor="#F9EBB3">
<th style="border-top-left-radius:8px; border-bottom-left-radius: 8px;border:solid black;"><b>Id</b></th>
<th style="border:solid black;"><b>Category</b></th>
<th style="border-top-right-radius:8px;border-bottom-right-radius: 8px;border:solid black;"><b>Description</b></th>  
</tr>
<%
try{
	connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
	statement=connection.createStatement();
	String sql = "Select * from categories";
	resultset = statement.executeQuery(sql);
	while(resultset.next()){
%>   
	<tr bgcolor="#C0C0C0">
    <td style="border-top-left-radius: 15px;
      border-bottom-left-radius: 15px;"><%=resultset.getString("cat_id") %></td>
	<td><%=resultset.getString("cat_name") %></td>
	<td style="border-top-right-radius: 15px;
    border-bottom-right-radius: 15px;"><%=resultset.getString("cat_description")%></td>
	</tr>
<% 
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
</table>


<%-- started from here --%>
<br/><br/>
    <form method="post" name="frm" action="SearchTopics">
      <table border="0" width="300" align="center"style="margin:-150px;margin-left:430px;">
        <tr><td colspan=2 style="font-size:12pt; " align="center" >
        <h3>Search Topics/Questions</h3></td></tr>
        <tr><td ><b>ID</b></td>
          <td>: <input  type="text" name="pid" id="pid">
        </td></tr>        
        <tr><td colspan=2 align="center" style="margin-top:150px;">
        <input  type="submit" name="submit" value="Search"></td></tr>
      </table>
    </form>

<%-- don't erase <a href="topindexha1.jsp">Search Topics</a><p>(Remember the Id)</p>    <%-- align this to center below the table.   --%>
 

</body>
</html>