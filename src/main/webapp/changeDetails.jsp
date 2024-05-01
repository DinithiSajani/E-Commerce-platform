<<<<<<< HEAD
<<<<<<< HEAD

=======
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
>>>>>>> main
=======
<%@ page import="project.ConnectionProvider" %>

<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
>>>>>>> Dinithi
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<<<<<<< HEAD
<<<<<<< HEAD

<h3>Name: </h3>
<hr>
 <h3>Email: </h3>
 <hr>
 <h3>Mobile Number: </h3>
 <hr>
<h3>Security Question: </h3>
=======
=======
>>>>>>> Dinithi
<%
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from users where email='"+email+"'");
while(rs.next())
{
%>
<h3>Name: <%=rs.getString(1) %> </h3>
<hr>
 <h3>Email: <%=rs.getString(2) %> </h3>
 <hr>
 <h3>Mobile Number:  <%=rs.getString(3) %></h3>
 <hr>
<h3>Security Question:  <%=rs.getString(4) %> </h3>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
<hr>
      <br>
      <br>
      <br>
<<<<<<< HEAD
<<<<<<< HEAD

=======
=======
>>>>>>> Dinithi
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
</body>
</html>