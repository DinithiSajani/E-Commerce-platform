<<<<<<< HEAD
<<<<<<< HEAD

=======
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="footer.jsp" %>
>>>>>>> main
=======
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="footer.jsp" %>
>>>>>>> Dinithi
<html>
<head>
<link rel="stylesheet" href="css/bill.css">
<title>Bill</title>
</head>
<body>
<<<<<<< HEAD
<<<<<<< HEAD

<h3>Online shopping Bill (BTech Days)</h3>
<hr>
<div class="left-div"><h3>Name:  </h3></div>
<div class="right-div-right"><h3>Email:  </h3></div>
<div class="right-div"><h3>Mobile Number:  </h3></div>  

<div class="left-div"><h3>Order Date:  </h3></div>
<div class="right-div-right"><h3>Payment Method:  </h3></div>
<div class="right-div"><h3>Expected Delivery:  </h3></div> 

<div class="left-div"><h3>Transaction Id:  </h3></div>
<div class="right-div-right"><h3>City:  </h3></div> 
<div class="right-div"><h3>Address:  </h3></div> 

<div class="left-div"><h3>State:  </h3></div>
<div class="right-div-right"><h3>Country:  </h3></div>  

<hr>

=======
=======
>>>>>>> Dinithi
<%
String email=session.getAttribute("email").toString();
try
{
	int total=0;
<<<<<<< HEAD
	int=sno=0;
=======
	int.class=sno=0;
>>>>>>> Dinithi
	Connection con=ConnectionProvider.getCon();
	Statements st=con.createStatement;
	ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"' and status='bill'");
	while(rs.next())
	{
		total=rs.getInt(1);
	}
	ResultSet rs2=st.executeQuery("select *from users inner join cart where cart.email='"+email+"' and cart.status='bill");
	while(rs2.next());
	{
%>
<h3>Online shopping Bill (BTech Days)</h3>
<hr>
<div class="left-div"><h3>Name: <%=rs2.getString(1) %> </h3></div>
<div class="right-div-right"><h3>Email: <%out.println(email); %> </h3></div>
<div class="right-div"><h3>Mobile Number: <%=rs2.getString(20) %> </h3></div>  

<div class="left-div"><h3>Order Date:  <%=rs2.getString(21) %></h3></div>
<div class="right-div-right"><h3>Payment Method: <%=rs2.getString(23) %> </h3></div>
<div class="right-div"><h3>Expected Delivery: <%=rs2.getString(22) %> </h3></div> 

<div class="left-div"><h3>Transaction Id: <%=rs2.getString(24) %> </h3></div>
<div class="right-div-right"><h3>City: <%=rs2.getString(17) %> </h3></div> 
<div class="right-div"><h3>Address: <%=rs2.getString(16) %> </h3></div> 

<div class="left-div"><h3>State: <%=rs2.getString(18) %> </h3></div>
<div class="right-div-right"><h3>Country: <%=rs2.getString(19) %> </h3></div>  

<hr>
<%break;} %>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi

	
	<br>
	
<table id="customers">
<h3>Product Details</h3>
  <tr>
    <th>S.No</th>
    <th>Product Name</th>
    <th>category</th>
    <th>Price</th>
    <th>Quantity</th>
     <th>Sub Total</th>
  </tr>
<<<<<<< HEAD
<<<<<<< HEAD
  
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
     <td></td>
=======
=======
>>>>>>> Dinithi
  <%
  ResultSet rs1=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.status='bill'");
  while(rs1.next())
  {
	  sno=sno+1;
  %>
  <tr>
    <td><%out.println(sno); %></td>
    <td><%=rs1.getString(17) %></td>
    <td><%=rs1.getString(18) %></td>
    <td><%=rs1.getString(19) %></td>
    <td><%=rs1.getString(3) %></td>
     <td><%=rs1.getString(5) %></td>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
  </tr>
  <tr>

</table>
<<<<<<< HEAD
<<<<<<< HEAD
<h3>Total: </h3>
<a href="continueShopping.jsp"><button class="button left-button">Continue Shopping</button></a>
<a onclick="window.print();"><button class="button right-button">Print</button></a>
<br><br><br><br>

=======
=======
>>>>>>> Dinithi
<h3>Total:<%out.println(total); %> </h3>
<a href="continueShopping.jsp"><button class="button left-button">Continue Shopping</button></a>
<a onclick="window.print();"><button class="button right-button">Print</button></a>
<br><br><br><br>
<<<<<<< HEAD
<%
}
=======
<% 
}}
 
>>>>>>> Dinithi
catch(Exception e)
{
System.out.println(e);	
}%>
<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
</body>
</html>