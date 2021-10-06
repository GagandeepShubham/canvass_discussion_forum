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
<title>showing the topics under all categories.</title>
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
<h2 align = "center"><font><strong>Topic/Question</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
</tr>
<tr bgcolor="#A52A2A">
<%--  <td><b>Topic Id</b>  --%>
<td><b>Topic/Question</b></td>
<td><b>Date Posted</b></td>
<%--  <td><b>Category</b></td> --%>
<td><b>Asked by</b></td>
</tr>
<%
try{
	connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
	statement=connection.createStatement();
	String sql = "Select * from topics";
	resultset = statement.executeQuery(sql);
	while(resultset.next()){
%>
<tr bgcolor="#DEB887">
 <%-- 	<td><%=resultset.getString("topic_id") %></td>  --%>
	<td><a href="redirect_post.jsp"><%=resultset.getString("topic_subject") %></a></td>  <%-- in the a tag give the  address  of jsp where all the posts under certain category will be listed --%>
	<td><%=resultset.getString("topic_date")%></td>
 <%-- 	<td><%=resultset.getString("topic_cat") %></td>  --%>
	<td><%=resultset.getString("topic_by") %></td>
	
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