<%-- 
    Document   : changeDetails
    Created on : May 5, 2024, 3:11:00 PM
    Author     : SHENALI
--%>

<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link rel="icon" href="HeartFeltHublogo.png" type="image/png" sizes="1920x1080">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try{
	ConnectionProvider conProvider =new ConnectionProvider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next()){

%>
    <h3>Name: <%=rs.getString(1) %></h3>
    <hr>
    <h3>Email: <%=rs.getString(2) %></h3>
    <hr>
    <h3>Mobile Number: <%=rs.getString(3) %></h3>
    <hr>
    <h3>Security Question: <%=rs.getString(4) %></h3>
<hr>
      <br>
      <br>
      <br>
<%
}
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>
    
    
