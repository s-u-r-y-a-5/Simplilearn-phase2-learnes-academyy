<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<h3 align="center">Edit Teacher Designation</h3>
<form action = "editteacherdesignationController.jsp">
<p align ="center">
Updated Designation<br><input type="text" name = "teacherdesignation"><br>

<input type = "hidden" name = "id"  value = <%=request.getParameter("id") %>><br>
<input type = "submit" value ="Submit">
</p>
</body>
</html>