<!-- spring mvc form tag -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<h1>Login Page!</h1>
 <!-- create a form  -->
 <form action="process-login" method="POST" >
  <label>Username</label>
  <input name="username" type="username"/>
 <br/>
  <label>Password</label>
  <input type="password" name="password"/>
   <br/>
  <input type="submit" value="login">

 </form>
 
 
</body>
</html>