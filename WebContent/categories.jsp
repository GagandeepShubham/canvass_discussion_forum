<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>writing categories in DB.</title>

</head>
<body>
<form action="pcategory" method="post" >
 <table cellspacing ="5px" cellpadding ="4px" align="center">
     <tr>
     <td><label>Category Id</label></td>
     <td><input type="text" name="cat_id"/></td>
     </tr>
     <tr>
      <td><label>Category name</label></td>
      <td><input type="text" name="cat_name"/></td>
     </tr>
     <tr>
     <td><label>Category description</label></td>
     <td><input type="text" name="cat_description"/></td>
     </tr>
     <tr>
     <td> <a href="pcategory.java"/></td>
	 <td><input type="submit" value="save" /></td>
	 </tr>
</table>
</form>
</body>
</html>