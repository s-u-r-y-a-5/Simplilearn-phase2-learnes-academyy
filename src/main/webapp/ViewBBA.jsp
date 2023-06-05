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

<h1 align ="center">View Report for Class BBA
</h1>

<table border ="1" align="center">
<tr>
<th>Id</th>
<th>Class Name</th>
<th>Subject Name</th>
<th>Teacher Name</th>
</tr>

<%
SubjectteacherDaoBBA dao=new SubjectteacherDaoBBA();
List<subjectteacherbba> list=dao.display();

for(subjectteacherbba st:list){
%>	
<tr>
<td><%= st.getStid() %></td>
<td><%= st.getStclassb() %></td>
<td><%= st.getSubjectb() %></td>
<td><%= st.getTeacherb() %></td>
<%}

%>
</table>

</body>
</html>