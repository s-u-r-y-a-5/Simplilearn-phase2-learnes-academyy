<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import ="la.pojo.Subject" %>
    <%@ page import ="la.dao.SubjectDao" %>
    <%@ page import ="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learnes Academey</title>
</head>
<body>
<form>
<input type = "hidden" name="id" value=<%=request.getParameter("sid") %>>
<input type ="submit" value="Delete">
<%
SubjectDao dao = new SubjectDao();
Subject su = new Subject();
su.setSid(Integer.parseInt(request.getParameter("sid")));
int del = dao.delete(su);
if(del>0){
	response.sendRedirect("subject.jsp");
}

%>
</form>
</body>
</html>