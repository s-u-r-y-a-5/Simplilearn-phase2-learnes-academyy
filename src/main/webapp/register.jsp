<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learner Acadmey</title>
</head>
<body>

<h1 align ="center">Learner Acadmey</h1>
<h2 align ="center">New Register</h2>
<form action = "registerController.jsp">
<p align ="center">user<br>
<input type = "text" name="user"><br><br>
password<br><input type = "text" name="pwd"><br><br>
<input type = "submit" value="register"></p><br>
</form>

<h2 align ="center">User Login</h2>
<form action = "LoginController.jsp">
<p align ="center">user<br>
<input type = "text" name="user"><br><br>
password<br><input type = "text" name="pwd"><br><br>
<input type = "submit" value="login"></p>
</form>



</body>
</html>