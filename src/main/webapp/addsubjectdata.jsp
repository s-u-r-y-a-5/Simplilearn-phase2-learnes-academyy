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

<%
SubjectDao dao = new SubjectDao();
Subject sub = new Subject();

sub.setSubject(request.getParameter("subject"));

int row = dao.addsubject(sub);
	if(row>0){
		response.sendRedirect("subject.jsp");
		}
%>
</body>
</html>