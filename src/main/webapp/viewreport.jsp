<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<h1 align ="center">View Report for Class
</h1>

<table>
<p align="center">
<form action = "ViewBE.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("cid") %>>
<input type ="submit" value="View report for class BE">
</form>
<br>
<form action = "ViewBBA.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("cid") %>>
<input type ="submit" value="View report for class BBA">
</form>
<br>
<form action = "ViewBSC.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("cid") %>>
<input type ="submit" value="View report for class BSC">
</form>

</p>

</table>

</body>
</html>