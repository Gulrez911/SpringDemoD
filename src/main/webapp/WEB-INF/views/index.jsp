<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
		<div class="container">
				<form:form action="send" method="post" modelAttribute="message">
						<table>
								<tr>
										<td>To:</td>
										<td><form:input path="to"  class="form-control"/></td>
								</tr>
								<tr>
										<td>Subject:</td>
										<td><form:input path="subject" class="form-control"/></td>
								</tr>
								<tr>
										<td>Message:</td>
										<td><form:textarea rows="4" cols="50" path="message" class="form-control"/></td>
								</tr>
								<tr>
										<td><input type="submit" value="Send" class="btn btn-primary"/></td>
								</tr>
						</table>
				</form:form>
		</div>
</body>
</html>