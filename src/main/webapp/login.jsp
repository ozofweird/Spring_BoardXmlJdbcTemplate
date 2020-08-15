<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><spring:message code="message.user.login.title" /></title>
</head>
<body>
<div style="text-align:center;">
	<h1><spring:message code="message.user.login.title" /></h1>
	
	<a href="login.do?lang=en"><spring:message code="message.user.login.language.en" /></a>
	&nbsp;&nbsp;
	<a href="login.do?lang=ko"><spring:message code="message.user.login.language.ko" /></a>
		
	<hr>
	<form action="login.do" method="post">
		<table style="border: 1px; margin: auto; border-collapse: collapse; border-spacing: 5px;">
			<tr>
				<td bgcolor="orange"><spring:message code="message.user.login.id" /></td>
				<td><input type="text" name="id" value="${userVO.id }" /></td>
			</tr>
			<tr>
				<td bgcolor="orange"><spring:message code="message.user.login.password" /></td>
				<td><input type="password" name="password" value="${userVO.password }" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="<spring:message code="message.user.login.loginBtn" />" />
				</td>
			</tr>
		</table>
	</form>
	<hr>
</div>
</body>
</html>