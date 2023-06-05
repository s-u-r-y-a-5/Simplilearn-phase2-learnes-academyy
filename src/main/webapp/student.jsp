<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "la.pojo.Student" %>
    <%@ page import = "la.dao.StudentDao" %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

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


<form action ="Addstudent.jsp"> 
<p align ="center"><input type = "submit" value="Add Student"></p>
</form>

<table border ="1" align ="center" >
<tr>
<th>Id</th>
<th>First name</th>
<th>Last Name</th>
<th>Address</th>
<th>Phone no</th>
<th>D.O.B</th>
<th>Class</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
StudentDao dao = new StudentDao();
List<Student> list = dao.display();
for(Student s:list){
%>	
<tr>
<td><%=s.getSid() %></td>
<td><%=s.getFirstname()%></td>
<td><%=s.getLastname()%></td>
<td><%=s.getAddress() %></td>
<td><%=s.getNumber()%></td>
<td><%=s.getOrderdate()%></td>
<td><%=s.getSclass()%></td>


<td><a href = "editStudent.jsp?sid=<%=s.getSid()%>">Edit</a></td>
<td><a href = "deletestudent.jsp?sid=<%=s.getSid()%>">Delete</a></td>
</tr>
<%}
%>

</table>
</body>
</html>