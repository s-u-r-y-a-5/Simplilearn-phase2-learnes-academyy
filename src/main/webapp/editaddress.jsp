<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<h1 align ="center">Edit Address</h1>
<form action = "editaddresscontroller.jsp">
<p align ="center">
Updated address<br><input type="text" name = "address"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("id") %>><br>
<input type = "submit" value ="edit">
</p>
</form>
</body>
</html>