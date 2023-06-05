<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
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
<%
StudentDao dao = new StudentDao();
Student stu = new Student();

stu.setFirstname(request.getParameter("firstname"));
stu.setLastname(request.getParameter("lastname"));
stu.setAddress(request.getParameter("address"));
stu.setNumber(request.getParameter("number"));

String pdate = request.getParameter("dob");
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
Date date =dateFormat.parse(pdate);
stu.setOrderdate(date);

stu.setSclass(request.getParameter("sclass"));

int row = dao.addstudent(stu);
	if(row>0){
		response.sendRedirect("Dashboard.jsp");
		}


%>

</body>
</html>