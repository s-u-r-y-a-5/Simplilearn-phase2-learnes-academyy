<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<h1 align ="center">Edit student info</h1>

<table>
<p align ="center">
<form action = "editfirstname.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("sid") %>>
<input type ="submit" value="editfirstname">
</form>

<form action = "editlastname.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("sid") %>>
<input type ="submit" value="editlastname">
</form>

<form action = "editaddress.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("sid") %>>
<input type ="submit" value="editaddress">
</form>

<form action = "editnumber.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("sid") %>>
<input type ="submit" value="editnumber">
</form>

<form action = "editclass.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("sid") %>>
<input type ="submit" value="editclass">
</form>

</p>
</table>

</body>
</html>