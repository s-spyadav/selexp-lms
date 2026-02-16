<!-- spring mvc form tag -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<h1>Login Page!</h1>
 <!-- create a form  -->
 <form:form action="process-login" method="POST" >
  <label>Username</label>
  <form:input name="username" type="username"/>
 <br/>
  <label>Password</label>
  <form:input type="password" name="password"/>
   <br/>
  <input type="submit" value="login">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
 </form:form>
 
 
</body>
</html>