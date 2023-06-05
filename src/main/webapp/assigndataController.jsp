<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "la.pojo.SubjectTeacher" %>
    <%@ page import = "la.dao.SubjectteacherDaoBE" %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<%
SubjectteacherDaoBE dao = new SubjectteacherDaoBE();
SubjectTeacher assts = new SubjectTeacher();

assts.setTeacher(request.getParameter("Teacher"));
assts.setSubject(request.getParameter("Subject"));


int row = dao.addst(assts);
if(row>0){
	response.sendRedirect("subjectandteacher.jsp");
}

%>


</body>
</html>