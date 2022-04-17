<%@page import="java.util.Iterator"%>
<%@page import="edu.jspiders.phonesimulator.dto.Contact"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.jspiders.phonesimulator.dao.ContactDatabaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Application</title>
 <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'> 
 <link rel="icon" href="./resources/Images/570-5702666_contact-logos-png-contact-number-logo-png-transparent.png">
 <style>
 	table {
 		text-align:center;
 	}
 </style>
</head>
<jsp:include page="/header"></jsp:include>
<jsp:include page="/navigation"></jsp:include>
<body>

	<table border="1" cellspacing="1" cellpadding="5">
	<caption><strong>Contact Details</strong></caption>
		<tr>
			<th>Name</th>
			<th>Number</th>
			<th>Email</th>
			<th>Date</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
<% 
	
	ArrayList<Contact> allContacts = new ContactDatabaseOperations().allContacts();

	Iterator<Contact> itr = allContacts.iterator();
	
	while(itr.hasNext())
	{
		Contact c = itr.next();
%>
	<tr>
		<td> <%=  c.getName() %></td>
		<td> <%=  c.getNumber() %></td>
		<td> <%= c.getEmail() %></td>
		<td> <%= c.getDate() %></td>
		<td><a href="editInput?name=<%=c.getName()%>"><i class='fa fa-edit'></i></a></td>
		<td><a href="deleteInput?name=<%=c.getName()%>"><i class='fa fa-remove'></i></a></td>
	</tr>
<%
	}
%>
	</table>

</body>
</html>