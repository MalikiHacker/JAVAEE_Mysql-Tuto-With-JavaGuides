<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="com.javaguides.login.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion result</title>
</head>
<body>
 <div align="center">
 	<h1>You have logined successfully</h1>
  <%-- <jsp:useBean id="login" class="com.javaguides.registration.model.Employee" />

            <jsp:setProperty property="*" name="login" />

            <%
  LoginDao loginDao = new LoginDao();
   boolean status = loginDao.validate(login);
   if (status) {
           out.print("<h1>You have logined successfully</h1>");
   }
 %>--%>
 	<h3><a href="/jsp-servlet-jdbc-mysql-tutos/login">Page de connection</a></h3>
 	<h3><a href="/jsp-servlet-jdbc-mysql-tutos/register">Page d'inscription</a></h3>
 </div>
</body>
</html>