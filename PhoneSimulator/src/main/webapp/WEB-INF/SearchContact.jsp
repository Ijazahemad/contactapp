<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Application</title>
    <link rel="stylesheet" href="./resources/css/contactForm.css">
     <link rel="icon" href="./resources/Images/570-5702666_contact-logos-png-contact-number-logo-png-transparent.png">
</head>
<style>
	body {
	background-attachment: fixed;
	}
</style>
<body>
    <div class="center">
        <h1>Search Contact</h1>
        <h4><a href="home">Home</a></h4>
        <form action="search" method="post">
         <div class="inputbox">
                <input type="text" required="required" name="name">
                <span>Name</span>
              </div>
          <div class="inputbox">
            <input type="submit" value="submit">
          </div>
        </form>
      </div>
</body>
</html>