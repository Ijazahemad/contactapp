<%@page import="edu.jspiders.phonesimulator.dao.ContactDatabaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Apllication</title>
<link rel="icon" href="./resources/Images/570-5702666_contact-logos-png-contact-number-logo-png-transparent.png">
</head>
<body>

	<% if(new ContactDatabaseOperations().deleteContact(request.getParameter("name")))
	{
	%>
	<jsp:include page="/allContact"></jsp:include>
	<%
	}
	
	else
	{
		
	%>
	<jsp:include page="/header"></jsp:include>
	<jsp:include page="/navigation"></jsp:include>
	<h1>COntact Deletion Failed</h1>
	<% } %>
</body>
</html>