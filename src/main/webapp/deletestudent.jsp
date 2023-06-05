<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "la.pojo.Student" %>
    <%@ page import = "la.dao.StudentDao" %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<form>
<input type = "hidden" name="id" value=<%=request.getParameter("sid") %>>
<input type ="submit" value="Delete">

<%
StudentDao dao = new StudentDao();
Student su = new Student();
su.setSid(Integer.parseInt(request.getParameter("sid")));
int del = dao.delete(su);
if(del>0){
	response.sendRedirect("student.jsp");
}

%>

</form>
</body>
</html>