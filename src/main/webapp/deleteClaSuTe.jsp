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

<form>
<input type = "hidden" name="id" value=<%=request.getParameter("stid") %>>
<input type ="submit" value="Delete">
<%
SubjectteacherDaoBE dao = new SubjectteacherDaoBE();
SubjectTeacher te = new SubjectTeacher();

te.setStid(Integer.parseInt(request.getParameter("stid")));
int del = dao.delete(te);
if(del>0){
	response.sendRedirect("subjectandteacher.jsp");
}
%>
</form>
</body>
</html>