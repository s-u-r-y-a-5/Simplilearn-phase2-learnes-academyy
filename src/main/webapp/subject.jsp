<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="la.pojo.Subject" %>
    <%@ page import ="la.dao.SubjectDao" %>
    <%@ page import ="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<table border ="1">
<tr>
<th><a href="Dashboard.jsp">Class</a>
<a href="student.jsp">Student</a>
<a href="subject.jsp">Subject</a>
<a href="teacher.jsp">Teacher</a>
<a href="logout.jsp">Logout</a>
</th>
</tr>
</table>
<br></br>

<p align ="center">
<H1 align ="center">Add Subject:</H1>
<form action ="addsubject.jsp" align ="center">
<input type="submit" value="Addsubject">
</form>
</p>

<table border ="1" align="center">
<tr>
<th>Id</th>
<th>Subject</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
SubjectDao dao = new SubjectDao();
List<Subject> list=dao.display();
for(Subject s:list){
%>
<tr>
<td><%= s.getSid() %></td>
<td><%= s.getSubject() %></td>
<td><a href="editsubject.jsp?sid=<%=s.getSid()%>">Edit</a>	
<td><a href="deletesubject.jsp?sid=<%=s.getSid()%>">Delete</a>	
<%}
%>

</table>
</body>
</html>