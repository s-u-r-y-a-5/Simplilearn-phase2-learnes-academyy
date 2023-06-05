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

<form>
<input type = "hidden" name="id" value=<%=request.getParameter("stidc") %>>
<input type ="submit" value="Delete">
<%
SubjectteacherDaoBSC dao = new SubjectteacherDaoBSC();
subjectteacherbsc te = new subjectteacherbsc();

te.setStidc(Integer.parseInt(request.getParameter("stidc")));
int del = dao.delete(te);
if(del>0){
	response.sendRedirect("subjectandteacherBSC.jsp");
}
%>

</form>
</body>
</html>