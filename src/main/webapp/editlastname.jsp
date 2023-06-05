<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<h1 align ="center">Edit Last Name</h1>
<form action = "editlastnamecontroller.jsp">
<p align ="center">
Updated name<br><input type="text" name = "lastname"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("id") %>><br>
<input type = "submit" value ="editlastname">
</p>
</form>
</body>
</html>