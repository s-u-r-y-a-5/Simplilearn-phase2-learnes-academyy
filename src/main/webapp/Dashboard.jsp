<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "la.pojo.Classs" %>
    <%@ page import = "la.pojo.User" %>
    <%@ page import = "la.dao.ClassDao" %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learners Academey</title>
</head>
<body>
<H1 align ="center"> Welcome to Learners Academy </H1>
<%User user = (User)session.getAttribute("user"); %>
<%="Welcome "+user.getUser() %><br>

<table border="1">
<tr>
<th><a href = "Dashboard.jsp">Class</a>
<a href = "student.jsp">Student</a>
<a href = "subject.jsp">Subject</a>
<a href = "teacher.jsp">Teacher</a>
<a href = "logout.jsp">logout</a></th>
</tr>
</table>
<br></br>

<form action ="Addclass.jsp"> 
<p align ="center"><input type = "submit" value="Add class"></p>
</form>

<table border ="1" align ="center" >
<tr>
<th>Id</th>
<th>Class name</th>
<th>Assign subject and teacher</th>
<th>Edit</th>
<th>Delete</th>
<th>View subject,Teachers and Students</th>
</tr>

<%
ClassDao dao=new ClassDao();
List<Classs> list=dao.display();
for(Classs c:list){
%>

<tr>
<td><%= c.getCid() %></td>
<td><%= c.getClasss() %></td>
<td><a href = "st.jsp?cid=<%=c.getCid()%>">Subject and teacher</a></td>
<td><a href = "editclassname.jsp?cid=<%=c.getCid()%>">Edit</a></td>
<td><a href = "delete.jsp?cid=<%=c.getCid()%>">Delete</a></td>
<td><a href = "viewreport.jsp?cid=<%=c.getCid()%>">View Report</a></td>
</tr>

 <%}
%>

</table>
</body>
</html>