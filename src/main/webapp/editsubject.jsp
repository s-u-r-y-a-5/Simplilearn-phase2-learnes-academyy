<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<h1 align="center">Edit subject</h1>
<table>

<form action = "editsubjectname.jsp">
<p align="center">
<input type = "hidden" name = "id"  value = <%=request.getParameter("sid") %>>
<input type ="submit" value="Edit Subject">
<p>
</form>
</table>
</body>
</html>