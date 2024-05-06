<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try{