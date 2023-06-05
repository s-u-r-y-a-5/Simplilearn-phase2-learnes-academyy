<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "la.dao.SubjectteacherDaoBE" %>
      <%@ page import = "la.dbconfig.DbUtil" %>
     <%@ page import = "la.pojo.SubjectTeacher" %>
     <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<h1 align ="center">View Report for Class BE
</h1>

<table border ="1" align="center">
<tr>
<th>Id</th>
<th>Class Name</th>
<th>Subject Name</th>
<th>Teacher Name</th>
</tr>

<%
SubjectteacherDaoBE dao=new SubjectteacherDaoBE();
List<SubjectTeacher> list=dao.display();

for(SubjectTeacher st:list){
%>	
<tr>
<td><%= st.getStid() %></td>
<td><%= st.getStclass() %></td>
<td><%= st.getSubject() %></td>
<td><%= st.getTeacher() %></td>
<%}

%>
</table>



</body>
</html>