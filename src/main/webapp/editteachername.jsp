<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<h2 align ="center">Edit teacher name</h2>
<form action = "editteachernameController.jsp">
<p align ="center">
Updated name<br><input type="text" name = "teachername"><br>

<input type = "hidden" name = "id"  value = <%=request.getParameter("id") %>><br>
<input type = "submit" value ="Submit">
</p>

</body>
</html>