<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>write post or see posts.</title>
</head>
<body>
<h3><a href="Postwrt.jsp">Want to Write a new Post?</a></h3>
<h3><a href="Postcontent.jsp">Want to see what others have Posted?</a></h3>   <%-- here give the address of that jsp which will give you all the post 
                                                                     regarding that particular topic you clicked which lead to you this page.
                                                                     , you have to write some sql query which select topic using topic id and  that topic id
                                                                      should be automatically be selected when you click the particular topic.--%>
</body>
</html>