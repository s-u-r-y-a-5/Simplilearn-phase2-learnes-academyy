<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "la.dao.SubjectteacherDaoBSC" %>
      <%@ page import = "la.dbconfig.DbUtil" %>
     <%@ page import = "java.util.*" %>
     <%@ page import = "la.pojo.subjectteacherbsc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<%
SubjectteacherDaoBSC dao = new SubjectteacherDaoBSC();
subjectteacherbsc assts = new subjectteacherbsc();

assts.setTeacherc(request.getParameter("Teacher"));
assts.setSubjectc(request.getParameter("Subject"));


int row = dao.addstc(assts);
if(row>0){
	response.sendRedirect("subjectandteacherBSC.jsp");
}

%>

</body>
</html>