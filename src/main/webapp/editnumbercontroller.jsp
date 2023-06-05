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

<%

StudentDao dao = new StudentDao();
Student stu = new Student();

stu.setSid(Integer.parseInt(request.getParameter("id")));
stu.setNumber(request.getParameter("number"));

int row = dao.editnum(stu);

if(row>0){
	response.sendRedirect("student.jsp");
}
else{
	response.sendRedirect("failedit.jsp");
}

%>

</body>
</html>