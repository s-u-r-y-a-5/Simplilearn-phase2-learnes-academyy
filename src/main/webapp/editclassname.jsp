<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<h3 align = "center">Update Class Name</h3>

<form action = "editclassnameController.jsp">
<p align ="center">
Updated subject<br>
<input type="text" name = "classname">

<input type = "hidden" name = "id"  value = <%=request.getParameter("cid") %>><br>
<input type = "submit" value ="Submit">
</p>
</form>
</body>
</html>