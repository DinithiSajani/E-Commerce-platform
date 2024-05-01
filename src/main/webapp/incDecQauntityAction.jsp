<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from cart where email='"+email+"' and product_id='"+id+"' and address is NULL");
while(rs.next())
{
price=rs.getInt(4);
total=rs.getInt(5);
quantity=rs.getInt(3);
}
<<<<<<< HEAD
if(quantity== && incdec.equals("dec"))
  response.sendRedirect("myCart.jsp?msg=notPossible");
  else if (quantity !=1 && incdec.equals("dec"))
=======
if (quantity == someValue && incdec.equals("dec")) {
    // Code to execute if quantity is equal to someValue and incdec is equal to "dec"
}

  response.sendRedirect("myCart.jsp?msg=notPossible");
   if (quantity !=1 && incdec.equals("dec"))
>>>>>>> Dinithi
  {
    total=total-price;
    quantity=quantity-1;
    st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is NULL");
    response.sendRedirect("myCart.jsp?msg=dec");
    }
    else
    {
    total=total-price;
    quantity=quantity+1;
    st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is NULL");
    response.sendRedirect("myCart.jsp?msg=inc");
    }
    } 
    catch(Exception e)
    {
       System.out.println(e);
       }
       %>