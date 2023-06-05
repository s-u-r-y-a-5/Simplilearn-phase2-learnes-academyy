<%@page import="javax.persistence.metamodel.SetAttribute"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "la.dao.SubjectteacherDaoBE" %>
      <%@ page import = "la.dbconfig.DbUtil" %>
     <%@ page import = "la.pojo.SubjectTeacher" %>
     <%@ page import = "java.util.*" %>
     <%@ page import = "la.pojo.Classs" %>
    <%@ page import = "la.pojo.User" %>
    <%@ page import = "la.dao.ClassDao" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title hereLearnes Academey</title>
</head>
<body>

<h1 align ="center">Add Teacher and Subject for BE</h1>

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



<form action ="assigndataController.jsp" align = "center">

  <label for="Teacher">Select Teacher:</label><br>
  <select name="Teacher" id="Teacher">
    <option value="Nisha">Nisha</option>
    <option value="Shanu">Shanu</option>
    <option value="Lokesh">Lokesh</option>
  </select>
  <br><br>
  
  <label for ="Subject">Select Subject:</label><br>
   <select name="Subject" id="Subject">
    <option value="Java">Java</option>
    <option value="Data Structure">Data Structure</option>
    <option value="Maths">Maths</option>
    <option value="OS">OS</option>
    <option value="Graphic">Graphic</option>
    <option value="python">python</option>
    <option value="English">English</option>
  </select>
  <br><br>
  
  <input type="submit" value="Assign">
</form>
<br>

<table border ="1" align="center">
<tr>
<th>Id</th>
<th>Class Name</th>
<th>Subject Name</th>
<th>Teacher Name</th>
<th>Action</th>
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

<td><a href="deleteClaSuTe.jsp?stid=<%=st.getStid()%>">Delete</a>	
<%}
%>
</table>





</body>
</html>