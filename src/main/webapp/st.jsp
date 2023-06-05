<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<h1 align ="center">Class</h1>
<table>
<P ALIGN ="CENTER">
<form action = "subjectandteacher.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("cid") %>>
<input type ="submit" value="Enter BE">
</form>

<form action = "subjectandteacherBBA.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("cid") %>>
<input type ="submit" value="Enter BBA">
</form>

<form action = "subjectandteacherBSC.jsp"><br>
<input type = "hidden" name = "id"  value = <%=request.getParameter("cid") %>>
<input type ="submit" value="Enter BSC">
</form>

</p>


</table>

</body>
</html>