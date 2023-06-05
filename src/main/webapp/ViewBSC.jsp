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

<h1 align ="center">View Report for Class BSC
</h1>

<table border ="1" align="center">
<tr>
<th>Id</th>
<th>Class Name</th>
<th>Subject Name</th>
<th>Teacher Name</th>
</tr>

<%
SubjectteacherDaoBSC dao=new SubjectteacherDaoBSC();
List<subjectteacherbsc> list=dao.display();

for(subjectteacherbsc st:list){
%>	
<tr>
<td><%= st.getStidc() %></td>
<td><%= st.getStclassc() %></td>
<td><%= st.getSubjectc() %></td>
<td><%= st.getTeacherc() %></td>
<%}

%>
</table>
</body>
</html>