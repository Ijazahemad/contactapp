<%@page import="edu.jspiders.phonesimulator.dao.ContactDatabaseOperations"%>
<%@page import="edu.jspiders.phonesimulator.dto.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding Contact Details to Database</title>
</head>

<body>
	<% 
		Contact c = new Contact();
	
		c.setName(request.getParameter("name"));
		c.setNumber(Long.parseLong(request.getParameter("number")));
		c.setEmail(request.getParameter("email"));
		c.setDate(request.getParameter("dob"));
		
		if(new ContactDatabaseOperations().insertContact(c))
		
		{
			
		
	%>
	<jsp:forward page="/allContact"></jsp:forward>
<% }
		else
		{
		%>
	<jsp:forward page="/contactInput"></jsp:forward>
		
		<% } %>
</body>
</html>