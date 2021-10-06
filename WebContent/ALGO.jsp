<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Download</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
img {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 150px;
}

img:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}
</style>

<style>

.btn2 {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 14px 92px;
  cursor: pointer;
  font-size: 20px;
  height:21px;
  width:93px;
  margin-top:40px;
}


/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}
</style>
<style>
body{
background-image:url("books.png");
background-repeat:no-repeat;
 background-attachment: fixed;

background-size:100% 100%; 
height:100%;
width:100%;
overflow:hidden;
}
</style>
</head> 
<body>


<a target="_blank" href="algo.jpg">
  <img src="algo.jpg" alt="algorithm" style="width:150px; margin-top:55px;margin-left:500px;">
</a>

<div class="btn2" align="center" style="margin-left:450px;">
<button><a href="cormen.pdf"><i class="fa fa-download"></i> Download</a></button>
</div>

</body>
</html>