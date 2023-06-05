<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<h3>EditSubjectName</h3>
<form action = "editsubjectnameController.jsp">
<p align ="center">
Updated subject<input type="text" name = "subjectname">

<input type = "hidden" name = "id"  value = <%=request.getParameter("id") %>>
<input type = "submit" value ="Submit">
</p>
</body>
</html>