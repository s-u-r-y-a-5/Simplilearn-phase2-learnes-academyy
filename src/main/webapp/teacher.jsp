<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="la.pojo.Teacher" %>
    <%@ page import ="la.dao.TeacherDao" %>
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
<H1 align ="center">Add Teacher:</H1>
<form action ="addteacher.jsp" align ="center">
<input type="submit" value="AddTeacher">
</form>
</p>

<table border ="1" align="center">
<tr>
<th>Id</th>
<th>Teacher Name</th>
<th>Teacher Designation</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
TeacherDao dao = new TeacherDao();
List<Teacher> list=dao.display();
for(Teacher t:list){
%>
<tr>
<td><%= t.getTid() %></td>
<td><%= t.getTeachername() %></td>
<td><%= t.getTeacherdesignation() %></td>
<td><a href="editteacher.jsp?tid=<%=t.getTid()%>">Edit</a>	
<td><a href="deleteteacher.jsp?tid=<%=t.getTid()%>">Delete</a>	
<%}
%>

</table>


</body>
</html>