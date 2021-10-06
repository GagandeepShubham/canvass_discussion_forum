<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searching the topics..../.\./</title>
</head>
<%-- STYLING NAVIGATION BAR --%>
<style>
body,nav_bar {margin:0;}

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
<%-- styling of the input text fields --%>
<style> 
input[type=text] {
    width: 100%;
    padding: 5px 20px;
    margin: -18px -5px;
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
    margin: 11px 2px;
    cursor: pointer;
}
</style>
<%-- link tag styling --%>
<style>
a:link, a:visited {
    background-color: #4caf50;
    color: white;
    padding: 12px 31px;;
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
background-image:url("cbg2.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:hidden;
}
</style>
<body>
<div class="nav_bar">
<ul>
  <li><a class="active" href="NewFile.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="about.jsp">About</a></li>
  <li><a href="register_1.jsp">Sign Up</a></li>
</ul>
</div>
 <table width="700px" align="center"
               style="margin-top:147px;">
            <tr>
                <td colspan=4 align="center"
                    style="background-color:teal;border-top-left-radius:9px;border-top-right-radius:9px;">
                    <b>Topics</b></td>
            </tr>
            <tr style="background-color:#3EACA8;">
                <td><b>Topic Id</b></td>
                <td><b>Topic/Question</b></td>
                <td><b>Date Posted</b></td>
                <td><b>Posted By</b></td>
             <%--   <td><b>Registration Date</b></td>  --%>
            </tr>
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#3EACA8";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
            </tr>
            
            <%
                    }
             %>
               
                    
             <%        
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#3EACA8"><b>No Questions Found..</b></td>
            </tr>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#3EACA8;border-bottom-left-radius:14px;border-bottom-right-radius:14px;"><a href="topicswrt1.jsp">Ask a Question</a></td>
            </tr>
            <%            }
                
            %>
            <% 
             if(count !=0) { 
            %>
                <tr>
                <td colspan=4 align="center"
                    style="background-color:#3EACA8"><a href="topicswrt1.jsp">Ask another Question</a></td>
                  </tr>
                   <tr>
                <td colspan=4 align="center"
                    style="background-color:#3EACA8;border-bottom-left-radius:14px;border-bottom-right-radius:14px;"><a href="Postwrt1.jsp">Write an Answer</a></td>
                </tr>
                <% }
                %>
            
        </table>
        
 <%-- Starting from here till body tag close, this is used to show the answers for particular question using it's topic_id --%>
       
        <br/><br/>
    <form method="post" name="frm1" action="SearchPosts">
      <table border="0" width="300" align="center">
        <tr><td colspan=2 style="font-size:12pt;" align="center">
        <h3>Search Answers</h3></td></tr>
        <tr><td ><b>Topic ID</b></td>
          <td><input  type="text" name="pid1" id="pid1">
        </td></tr>        
        <tr><td colspan=2 align="center">
        <input  type="submit" name="submit" value="Search"></td></tr>
      </table>
    </form>
    
    <%--  holy cow  --%>
    
    
</body>
</html>