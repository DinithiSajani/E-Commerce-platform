<<<<<<< HEAD
<<<<<<< HEAD

=======
=======
>>>>>>> Dinithi
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<<<<<<< HEAD
<<<<<<< HEAD
<title>Message Us</title>
</head>
<body>

<h3 class="alert">Your Mobile Number successfully changed!</h3>

<h3 class="alert">Your Password is wrong!</h3>


 <h3>Enter Your New Mobile Number</h3>
 
 <hr>
<h3>Enter Password (For Security)</h3>

<hr>
 <i class='far fa-arrow-alt-circle-right'></i>

=======
=======
>>>>>>> Dinithi
<title>Change Mobile Number</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style" type="number" name="mobileNumber" placeholder="Enter your New Number" required>
 <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password(Forn security)" required>
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form> 
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
</body>
<br><br><br>
</html>