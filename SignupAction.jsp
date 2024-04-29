<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getPrameter("name");
String email=request.getPrameter("email");
String mobileNumber=request.getPrameter("mobileNumber");
String securityQuestion=request.getPrameter("securityQuestion");
String answer=request.getPrameter("answer");
String password=request.getPrameter("password");
String address="";
String city="";
String state="";
String country="";
try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con. PreparedStatement("Insert into users values(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(1, email);
    ps.setString(1, mobileNumber);
    ps.setString(1, securityQuestion);
    ps.setString(1, answer);
    ps.setString(1, password);
    ps.setString(1, address);
    ps.setString(1, city);
    ps.setString(1, stare);
    ps.setString(1, country);
    response.sendRedirect("signup.jsp?msg=valid");
    }
    catch(Exception e)
    {
    	System.out.println(e);
    	response.sendRedirect("signup.jsp?msg=invalid");
    }
    %>