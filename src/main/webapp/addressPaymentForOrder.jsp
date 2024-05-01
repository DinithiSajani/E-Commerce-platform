<<<<<<< HEAD
<<<<<<< HEAD

=======
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.* %>
<%@include file="footer.jsp" %>
>>>>>>> main
=======
<%@page import="project.ConnectionProvider" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>

<%@ page import="java.sql.ResultSet" %>

<%@include file="footer.jsp" %>
>>>>>>> Dinithi
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<<<<<<< HEAD
<<<<<<< HEAD

=======
<script>
if(window.history.forward(1) !=null)
	window.history.forward(1);</script>
>>>>>>> main
=======
<script>
if(window.history.forward(1) !=null)
	window.history.forward(1);</script>
>>>>>>> Dinithi
</head>
<body>
<br>
<table>
<thead>
<<<<<<< HEAD
<<<<<<< HEAD

          <tr>
          <th scope="col"><a href=""><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i> </th>
=======
=======
>>>>>>> Dinithi
<%
String email=session.getAttribut("email").toString ();
int total=0;
int sno=0;
try
{
  Connection con=ConnectionProvider.getCon();
  Statement st=con.createStatement();
  ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
  while(rs1.next())
  {
	  total=rs1.getInt(1);
  }
%>
          <tr>
          <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i> <%out.println(total); %></th>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
<<<<<<< HEAD
<<<<<<< HEAD
        
          <tr>
          
           <td></td>
            <td></td>
            <td></td>
            <td><i class="fa fa-inr"></i> ></td>
            <td> </td>
            <td><i class="fa fa-inr"></i> </td>
            </tr>
         
        </tbody>
      </table>
      
<hr style="width: 100%">

 <div class="left-div">
 <h3>Enter Address</h3>

=======
=======
>>>>>>> Dinithi
          <%
     ResultSet rs=st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
     while(rs.next())
     {
     %> 
          <tr>
          <%sno=sno+1; %>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> ><%=rs.getString(4) %></td>
            <td><%=rs.getString(8) %> </td>
            <td><i class="fa fa-inr"></i><%=rs.getString(10 ) %> </td>
            </tr>
            <%
            }
            ResultSet rs2=st.executeQuery("select *from users whereemail='"+email+"'");
            while(rs2.next())
            {
            %>
         </tbody>
      </table>
      
<hr style="width: 100%">
<form action="addressPaymentOrderAction.jsp" method="post">
 <div class="left-div">
 <h3>Enter Address</h3>
<input class="input-style" type="text" name="address" value="<%=rs2.getString(7) %>" placeholder="Enter Address" required>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
 </div>

<div class="right-div">
<h3>Enter city</h3>
<<<<<<< HEAD
<<<<<<< HEAD

=======
<input class="input-style" type="text" name="city" value="<%=rs2.getString(8) %>" placeholder="Enter City" required>
>>>>>>> main
=======
<input class="input-style" type="text" name="city" value="<%=rs2.getString(8) %>" placeholder="Enter City" required>
>>>>>>> Dinithi
</div> 

<div class="left-div">
<h3>Enter State</h3>
<<<<<<< HEAD
<<<<<<< HEAD

=======
<input class="input-style" type="text" name="state" value="<%=rs2.getString(9) %>" placeholder="Enter State" required>
>>>>>>> main
=======
<input class="input-style" type="text" name="state" value="<%=rs2.getString(9) %>" placeholder="Enter State" required>
>>>>>>> Dinithi
</div>

<div class="right-div">
<h3>Enter country</h3>
<<<<<<< HEAD
<<<<<<< HEAD

=======
<input class="input-style" type="text" name="country" value="<%=rs2.getString(10) %>" placeholder="Enter Country" required>
>>>>>>> main
=======
<input class="input-style" type="text" name="country" value="<%=rs2.getString(10) %>" placeholder="Enter Country" required>
>>>>>>> Dinithi
</div>
<h3 style="color: red">*If there is no address its mean that you did not set you address!</h3>
<h3 style="color: red">*This address will also updated to your profile</h3>
<hr style="width: 100%">
<div class="left-div">
<h3>Select way of Payment</h3>
<<<<<<< HEAD
<<<<<<< HEAD
 
=======
=======
>>>>>>> Dinithi
 <select class="input-style" name="paymentMethod">
 <option value="Cash on Delivery(COD)">Cash on delivery(COD)</option>
 <option value="Online Payment">Online Payment</option>
 </select>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
</div>

<div class="right-div">
<h3>Pay online on this btechdays@pay.com</h3>
<<<<<<< HEAD
<<<<<<< HEAD

=======
<input class="input-style" type="text" name="transactionId"  placeholder="Enter Transaction ID">
>>>>>>> main
=======
<input class="input-style" type="text" name="transactionId"  placeholder="Enter Transaction ID">
>>>>>>> Dinithi
<h3 style="color: red">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h3>
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Mobile Number</h3>
<<<<<<< HEAD
<<<<<<< HEAD

=======
<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3) %>" placeholder="Enter Mobile Number" required>
>>>>>>> main
=======
<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3) %>" placeholder="Enter Mobile Number" required>
>>>>>>> Dinithi
<h3 style="color: red">*This mobile number will also updated to your profile</h3>
</div>
<div class="right-div">
<h3 style="color: red">*If you enter wrong transaction id then your order will we can cancel!</h3>
<<<<<<< HEAD
<<<<<<< HEAD
<i class='far fa-arrow-alt-circle-right'></i>
<h3 style="color: red">*Fill form correctly</h3>
</div>


=======
=======
>>>>>>> Dinithi
<button class="button" type="submit">Proceed to Generate Bill & Save<i class='far fa-arrow-alt-circle-right'></i></button>
<h3 style="color: red">*Fill form correctly</h3>
</div>
</form>
<%
     }
}
catch(Exception e)
{
   System.out.println(e);
   }%>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
      <br>
      <br>
      <br>

</body>
</html>