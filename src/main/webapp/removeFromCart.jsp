<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String product_is=request.getParameter("id");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
<<<<<<< HEAD
st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"' and address is NULL");
=======
st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product+"' and address is NULL");
>>>>>>> Dinithi
response.sendRedirect("myCart.jsp?msg=removed");
}
catch(Exception e)
{
System.out.println(e);
}
%>