<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "la.dao.ClassDao" %>
     <%@ page import = "la.pojo.Classs" %>
     <%@ page import = "java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<H1 align ="center">Assign Teacher and Subject for BE</H1>

<%Classs classs = (Classs)session.getAttribute("classs"); %>
<%="Welcome "+classs.getClasss() %><br>

<form action ="assigndataController.jsp" align = "center">

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
  
  <label for="Teacher">Select Teacher:</label><br>
  <select name="Teacher" id="Teacher">
    <option value="Nisha">Nisha</option>
    <option value="Shanu">Shanu</option>
    <option value="Lokesh">Lokesh</option>
  </select>
  <br><br>
  
  
  <input type="submit" value="Assign">
</form>



</body>
</html>