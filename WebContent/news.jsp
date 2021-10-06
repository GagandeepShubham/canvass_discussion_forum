<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    padding: 14px 22px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
</style>

<%-- giving the background --%>
<style>
body{
background-image:url("newsbg1.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:auto;
}
</style>

<style>
.newsclass{
margin-top:50px;
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
<div class="newsclass" align="center" >
<!-- start sw-rss-feed code --> 
<script type="text/javascript"> 
<!-- 
rssfeed_url = new Array(); 
rssfeed_url[0]="https://www.google.co.in/alerts/feeds/13915487152073636430/17301914594656403035"; rssfeed_url[1]="https://www.google.co.in/alerts/feeds/13915487152073636430/12919965637222896221"; rssfeed_url[2]="https://www.google.co.in/alerts/feeds/13915487152073636430/10659671654628495033"; rssfeed_url[3]="https://www.google.co.in/alerts/feeds/13915487152073636430/4969084307459405823"; rssfeed_url[4]="https://www.google.co.in/alerts/feeds/13915487152073636430/10724197289472393377";  
rssfeed_frame_width="900"; 
rssfeed_frame_height="700"; 
rssfeed_scroll="on"; 
rssfeed_scroll_step="20"; 
rssfeed_scroll_bar="on"; 
rssfeed_target="_blank"; 
rssfeed_font_size="12"; 
rssfeed_font_face=""; 
rssfeed_border="on"; 
rssfeed_css_url="https://feed.surfing-waves.com/css/style2a.css"; 
rssfeed_title="off"; 
rssfeed_title_name=""; 
rssfeed_title_bgcolor="#3366ff"; 
rssfeed_title_color="#fff"; 
rssfeed_title_bgimage=""; 
rssfeed_footer="off"; 
rssfeed_footer_name="rss feed"; 
rssfeed_footer_bgcolor="#fff"; 
rssfeed_footer_color="#333"; 
rssfeed_footer_bgimage=""; 
rssfeed_item_title_length="50"; 
rssfeed_item_title_color="#666"; 
rssfeed_item_bgcolor="#fff"; 
rssfeed_item_bgimage=""; 
rssfeed_item_border_bottom="on"; 
rssfeed_item_source_icon="off"; 
rssfeed_item_date="on"; 
rssfeed_item_description="on"; 
rssfeed_item_description_length="250"; 
rssfeed_item_description_color="#666"; 
rssfeed_item_description_link_color="#333"; 
rssfeed_item_description_tag="off"; 
rssfeed_no_items="0"; 
rssfeed_cache = "cf802a8b21169fba3286471fc6d53e41"; 
//--> 
</script> 
<script type="text/javascript" src="//feed.surfing-waves.com/js/rss-feed.js"></script> 
<!-- The link below helps keep this service FREE, and helps other people find the SW widget. Please be cool and keep it! Thanks.  
<div style="text-align:right; width:900px;">powered by <a href="http://www.surfing-waves.com" rel="noopener" target="_blank" style="color:#ccc;font-size:10px">Surfing Waves</a></div> -->
<!-- end sw-rss-feed code -->
</div>
</body>
</html>