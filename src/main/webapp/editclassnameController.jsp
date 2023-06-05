<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="la.pojo.Classs" %>
    <%@ page import ="la.dao.ClassDao" %>
    <%@ page import ="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>

<%
ClassDao dao = new ClassDao();
Classs tech = new Classs();

tech.setCid(Integer.parseInt(request.getParameter("id")));
tech.setClasss(request.getParameter("classname"));

int row = dao.editclass(tech);

if(row>0){
	response.sendRedirect("Dashboard.jsp");
}
else{
	response.sendRedirect("failedit.jsp");
}
%>

</body>
</html>