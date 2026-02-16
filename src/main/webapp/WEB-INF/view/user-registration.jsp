<!-- spring mvc form tag -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title>Insert title here</title>
			</head>

			<body>
				<%@include file="menu.jsp" %>
					<div class="container">
						<h1>Register yourself</h1>
						<!-- create a form  -->
						<form:form action="process-registration" method="POST">
							<label>Username</label>
							<form:input path="username" />
							<br />
							<label>Password</label>
							<form:input path="password" />
							<br />
							<label>Email</label>
							<form:input path="email" />
							<br />
							<label>Password</label>
							<form:input path="country" />

							<input type="submit" value="register">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</form:form>
					</div>

			</body>

			</html>