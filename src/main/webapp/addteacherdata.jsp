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

<%
TeacherDao dao = new TeacherDao();
Teacher tech = new Teacher();

tech.setTeachername(request.getParameter("teacher"));
tech.setTeacherdesignation(request.getParameter("teacherdesignation"));

int row = dao.addteach(tech);
	if(row>0){
		response.sendRedirect("teacher.jsp");
		}
%>




</body>
</html>