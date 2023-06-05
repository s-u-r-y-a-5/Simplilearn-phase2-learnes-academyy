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
<title>Learnes Academey</title>
</head>
<body>

<%
ClassDao dao=new ClassDao();
Classs co = new Classs();

co.setClasss(request.getParameter("classs"));

int row = dao.addclass(co);
if(row>0){
	response.sendRedirect("Dashboard.jsp");
}

%>

</body>
</html>