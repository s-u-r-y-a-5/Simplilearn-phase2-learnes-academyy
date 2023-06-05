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

tech.setTid(Integer.parseInt(request.getParameter("id")));
tech.setTeachername(request.getParameter("teachername"));

int row = dao.editteach(tech);

if(row>0){
	response.sendRedirect("teacher.jsp");
}
else{
	response.sendRedirect("failedit.jsp");
}
%>

</body>
</html>