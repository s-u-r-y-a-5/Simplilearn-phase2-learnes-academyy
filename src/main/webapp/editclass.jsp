<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<h1 align ="center">Edit Class</h1>
<form action = "editclasscontroller.jsp">
<p align ="center">
Updated class<br><input type="text" name = "sclass"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("id") %>><br>
<input type = "submit" value ="edit">
</p>
</form>
</body>
</html>