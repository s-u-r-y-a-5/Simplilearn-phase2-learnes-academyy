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

<form>
<input type = "hidden" name = "id"  value = <%=request.getParameter("pid") %>>
<input type = "submit" value ="Delete">
</form>


<%
ClassDao dao=new ClassDao();
Classs co = new Classs();

co.setCid(Integer.parseInt(request.getParameter("cid")));

int row = dao.delete(co);

if(row>0){
	response.sendRedirect("Dashboard.jsp");
}
else{
	response.sendRedirect("failedit.jsp");
}
%>

</body>
</html>