<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="la.pojo.Teacher" %>
    <%@ page import ="la.dao.TeacherDao" %>
    <%@ page import ="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<form>
<input type = "hidden" name="id" value=<%=request.getParameter("tid") %>>
<input type ="submit" value="Delete">
<%
TeacherDao dao = new TeacherDao();
Teacher te = new Teacher();
te.setTid(Integer.parseInt(request.getParameter("tid")));
int del = dao.delete(te);
if(del>0){
	response.sendRedirect("teacher.jsp");
}

%>
</form>
</body>
</html>