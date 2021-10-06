<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Post using Topic id</title>


</style>
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
    padding: 6px 144px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}
a:hover, a:active {
    background-color: green;
    color: white;}
 </style>
 <%-- giving the background --%>
<style>
body{
background-image:url("tfg1.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:scroll;
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
<body>
<ul>
  <li><a class="active" href="NewFile.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="about.jsp">About</a></li>
  <li><a href="register_1.jsp">Sign Up</a></li>
  
  </ul>
  <%-- ADD THE TOPIC/QUESTION HERE --%>
  <table width="700px" align="center"
               style="border:1px solid #e8843d;margin-top: 83px;border-top-left-radius:8px;border-top-right-radius:8px;border-bottom-left-radius:8px;border-bottom-right-radius:8px;">
            <tr >
                <td colspan=4 align="center"
                    style="background-color:#ffc876;border-top-left-radius:9px;border-top-right-radius:9px;">
                    <b>Question</b></td>
            </tr>
            <tr style="background-color:#ffc890;">
                <td><b>Topic Id</b></td>
                <td><b>Topic/Question</b></td>
                <td><b>Date</b></td>
                <td><b>Posted By</b></td>
             
            </tr>
            <%
                int count2 = 0;
                String color2 = "#F9EBB3";
                if (request.getAttribute("piList1") != null) {
                    ArrayList al1 = (ArrayList) request.getAttribute("piList1");
                    System.out.println(al1);
                    Iterator itr1 = al1.iterator();
                    while (itr1.hasNext()) {
 
                        if ((count2 % 2) == 0) {
                            color2 = "#afeaaf";
                        }
                        count2++;
                        ArrayList pList1 = (ArrayList) itr1.next();
            %>
            <tr style="background-color:<%=color2%>;">
                <td style="border-bottom-left-radius:8px;"><%=pList1.get(0)%></td>
                <td><%=pList1.get(1)%></td>
                <td ><%=pList1.get(2)%></td>
                <td style="border-bottom-right-radius:8px;"><%=pList1.get(3)%></td>
            </tr>
            <%
                    }
             %>
             
             
             <% 
                }
                %>
  
  
 <table width="700px" align="center"
               style="border:1px solid #e8843d;margin-top: 28px;border-top-left-radius:8px;border-top-right-radius:8px;border-bottom-left-radius:8px;border-bottom-right-radius:8px;">
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#ffc876;border-top-left-radius:9px;border-top-right-radius:9px;">
                    <b>Answers</b></td>
            </tr>
            <tr style="background-color:#ffc890;">
                <td><b>Post Content</b></td>
                <td><b>Date</b></td>
                <td><b>Posted By</b></td>
             
            </tr>
            <%
                int count1 = 0;
                String color1 = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count1 % 2) == 0) {
                            color1 = "#afeaaf";
                        }
                        count1++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color1%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
               <%--  <td><%=pList.get(3)%></td> --%>
            </tr>
            <%
                    }
             %>
             
             
             <% 
                }
                if (count1 == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#afeaaf"><b>No Posts Found..</b></td>
            </tr>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#afeaaf;border-bottom-left-radius:8px;border-bottom-right-radius:8px;"><a href="Postwrt1.jsp">Write an Answer</a></td>
            </tr>
            <%            }
            %>
            <%if (count1 !=0) {
            %>
             <tr>
                <td colspan=4 align="center"
                    style="background-color:#afeaaf;border-bottom-left-radius:8px;border-bottom-right-radius:8px;"><a href="Postwrt1.jsp">Write another Answer</a></td>
              </tr>
              <tr>
                <td colspan=4 align="center"
                    style="background-color:#afeaaf;border-bottom-left-radius:8px;border-bottom-right-radius:8px;"><a href="comments.jsp">Have a Doubt?</a></td>
              </tr>
             <% 
             }
             %>
   
         
        </table>
        
         <table width="700px" align="center"
               style="border:1px solid #e8843d;margin-top: 28px;border-top-left-radius:8px;border-top-right-radius:8px;border-bottom-left-radius:8px;border-bottom-right-radius:8px;">
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#ffc876;border-top-left-radius:9px;border-top-right-radius:9px;">
                    <b>comments</b></td>
            </tr>
            <tr style="background-color:#ffc890;">
                <td><b>Username</b></td>
                <td><b>Date</b></td>
                <td><b>Comment</b></td>
             
            </tr>
             <%
                int count3 = 0;
                String color3 = "#F9EBB3";
                if (request.getAttribute("piList2") != null) {
                    ArrayList al2 = (ArrayList) request.getAttribute("piList2");
                    System.out.println(al2);
                    Iterator itr2 = al2.iterator();
                    while (itr2.hasNext()) {
 
                        if ((count3 % 2) == 0) {
                            color3 = "#afeaaf";
                        }
                        count3++;
                        ArrayList pList2 = (ArrayList) itr2.next();
            %>
             <tr style="background-color:<%=color1%>;">
                <td><%=pList2.get(0)%></td>
                <td><%=pList2.get(1)%></td>
                <td><%=pList2.get(2)%></td>
               <%--  <td><%=pList.get(3)%></td> --%>
            </tr>
            <%
                    }
             %>
             
             
             <% 
                }
                if (count3 == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#afeaaf"><b>No Comments yet..</b></td>
            </tr>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#afeaaf;border-bottom-left-radius:8px;border-bottom-right-radius:8px;"><a href="comments.jsp">Write a comment</a></td>
            </tr>
            <%            }
            %>
            <% if (count3 !=0) {
            %>
             <tr>
                <td colspan=4 align="center"
                    style="background-color:#afeaaf;border-bottom-left-radius:8px;border-bottom-right-radius:8px;"><a href="comments.jsp">Write another comment</a></td>
              </tr>
               <% 
             }
             %>
             </table>
             
            
</body>
</html>