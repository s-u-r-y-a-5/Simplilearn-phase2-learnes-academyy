<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "la.pojo.subjectteacherbba" %>
    <%@ page import = "la.dao.SubjectteacherDaoBBA" %>
    <%@ page import = "la.dbconfig.DbUtil" %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<%
SubjectteacherDaoBBA dao = new SubjectteacherDaoBBA();
subjectteacherbba assts = new subjectteacherbba();

assts.setTeacherb(request.getParameter("Teacher"));
assts.setSubjectb(request.getParameter("Subject"));


int row = dao.addstb(assts);
if(row>0){
	response.sendRedirect("st.jsp");
}

%>


</body>
</html>