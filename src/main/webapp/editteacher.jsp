<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align ="center">Edit Teacher Details</h1>
<table>
<p align="center">
<form action = "editteachername.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("tid") %>>
<input type ="submit" value="Edit Teacher Name">
</form>

<form action = "editteacherdesignation.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("tid") %>>
<input type ="submit" value="Edit teacher Designation">
</form>
</p>
</table>
</body>
</html>