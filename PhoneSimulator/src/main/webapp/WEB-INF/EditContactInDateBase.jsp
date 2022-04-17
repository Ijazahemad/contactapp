<%@page import="edu.jspiders.phonesimulator.dto.Contact"%>
<%@page import="edu.jspiders.phonesimulator.dao.ContactDatabaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	
	<% 
		Contact c = new Contact();
		
		c.setName(request.getParameter("name"));
		c.setNumber(Long.parseLong(request.getParameter("number")));
		c.setEmail(request.getParameter("email"));
		c.setDate(request.getParameter("dob"));
		
		new ContactDatabaseOperations().updateContact(c);
	%>
	<jsp:include page="/allContact"></jsp:include>
	
</body>
</html>