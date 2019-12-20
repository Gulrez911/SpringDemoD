<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<form:form action="send" method="post" modelAttribute="message">
				<table>
						<tr>
								<td>To:</td>
								<td><form:input path="to" /></td>
						</tr>
						<tr>
								<td>Subject:</td>
								<td><form:input path="subject" /></td>
						</tr>
						<tr>
								<td>Message:</td>
								<td><form:textarea rows="4" cols="50" path="message" /></td>
						</tr>
						<tr>
								<td><input type="submit" value="Send" /></td>
						</tr>
				</table>
		</form:form>
</body>
</html>