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
<title>What others have posted on a particular topic.</title>
</head>
<body>
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
<h2 align = "center"><font><strong>Post/Answer</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
</tr>
<tr bgcolor="#A52A2A">
<td><b>Content</b>
<td><b>Date Posted</b></td>
<td><b>Post By</b></td>
</tr>
<%
try{
	connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
	statement=connection.createStatement();
	String sql = "Select post_content,post_date,post_by from posts,topics where post_topic=topic_id";
	resultset = statement.executeQuery(sql);
	while(resultset.next()){
%>
<tr bgcolor="#DEB887">
	<td><%=resultset.getString("post_content") %></td>
	<td><%=resultset.getString("post_date")%></td>
	<td><%=resultset.getString("post_by") %></td>
	
	
	</tr>
<% 
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</body>
</html>