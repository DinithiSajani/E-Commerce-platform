<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>Home</title>
<style>
    h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<%
String msg=request.getParameter("msg");
if("added".equals(msg)){
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>
<%
    
if("exist".equals(msg)){
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<%

if("invalid".equals(msg)){
%>
<h3 class="alert">Something went wrong tryagain!</h3>
<%} %>