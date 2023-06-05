<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = "la.dao.SubjectteacherDaoBBA" %>
      <%@ page import = "la.dbconfig.DbUtil" %>
     <%@ page import = "java.util.*" %>
     <%@ page import = "la.pojo.subjectteacherbba" %>
   
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
SubjectteacherDaoBBA dao = new SubjectteacherDaoBBA();
subjectteacherbba te = new subjectteacherbba();

te.setStid(Integer.parseInt(request.getParameter("stid")));
int del = dao.delete(te);
if(del>0){
	response.sendRedirect("subjectandteacherBBA.jsp");
}
%>
</form>
</body>
</html>