<%@page import="edu.jspiders.phonesimulator.dto.Contact"%>
<%@page import="edu.jspiders.phonesimulator.dao.ContactDatabaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>   
 <link rel="icon" href="./resources/Images/570-5702666_contact-logos-png-contact-number-logo-png-transparent.png">
<title>Contact Application</title>
<style>
	table {
		text-align:center;
	}
</style>
</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<jsp:include page="/navigation"></jsp:include>

		
	<% 
		Contact c = new  ContactDatabaseOperations().search(request.getParameter("name"));
	
		if(c != null)
		{
	
			
	%>
	<table border="1" >
	<caption><strong>Contact Details</strong></caption>
	
		<tr>
			<th>Name</th>
			<th>Number</th>
			<th>Email</th>
			<th>Date Of Birth</th>
			<th>Send Email</th>
			<th>Call</th>
			</tr>
		<tr>
			<td><%= c.getName() %></td>
			<td><%= c.getNumber() %></td>
			<td><%= c.getEmail() %></td>
			<td><%= c.getDate() %></td>
			<td><a href="mailto:<%= c.getEmail() %>"> <span class="bi bi-envelope red-color"></span></a> </td>
			<td><a href="tel:<%= c.getNumber() %>"><i class='fa fa-phone'></i></a></td>
		</tr>
		</table>
	<%
		}
		else
		{
	%>
		<jsp:forward page="/searchInput"></jsp:forward>
	<% 
		}
	%>
	
</body>
</html>