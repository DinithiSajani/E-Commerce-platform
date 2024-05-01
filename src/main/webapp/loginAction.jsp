<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> Dinithi
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
<<<<<<< HEAD
if("admin@gmail.com".equas(email) && "admin".equals(password))
=======
if ("admin@gmail.com".equals(email) && "admin".equals(password))
>>>>>>> Dinithi
{
	session.setAttribute("email",email);
	response.sendRedirect("admin/adminHome.jsp");
}
else
{
	int z=0;
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
<<<<<<< HEAD
		ResultSet rs=st.executeQuery("select *from users where email='"+email+"'and password='"+password+"');
=======
		ResultSet rs = st.executeQuery("SELECT * FROM users WHERE email='" + email + "' AND password='" + password + "'");
>>>>>>> Dinithi
		while(rs.next())
		{
			z=1;
			session.setAttribute("email",email);
			response.sendRedirect("home.jsp");
		}
		if(z==0)
			response.sendRedirect("login.jsp?msg=notexist");
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}
}
<<<<<<< HEAD
%>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
>>>>>>> main
=======
%>
>>>>>>> Dinithi
