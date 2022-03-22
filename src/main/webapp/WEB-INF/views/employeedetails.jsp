<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="com.javaguides.registration.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription Result</title>
</head>
<body>
 <h1>User successfully registered!</h1>
 <%-- <jsp:useBean id="employee"
  class="net.javaguides.jsp.jdbc.bean.Employee" />

 <jsp:setProperty property="*" name="employee" />

 <%
  EmployeeDao employeeDao = new EmployeeDao();
  int status = employeeDao.registerEmployee(employee);
  if (status > 0) {
   out.print("You are successfully registered");
  }
 %> --%>>
 <h3><a href="/jsp-servlet-jdbc-mysql-tutos/login">Se connecter</a></h3>
 <h3><a href="/jsp-servlet-jdbc-mysql-tutos/register">Page d'inscription</a></h3>
</body>
</html>