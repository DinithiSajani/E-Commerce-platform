<%@page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Order Date</th>
            <th scope="col">Expected Delivery Date</th>
            <th scope="col">Payment Method</th>
            <th scope="col">Status</th>
          </tr>
        </thead>
        <tbody>
<%
int sno = 0;
Connection con = null;
PreparedStatement pst = null;
ResultSet rs = null;

try {
    con = ConnectionProvider.getCon();
    pst = con.prepareStatement("select * from cart inner join product on cart.product_id=product.id where cart.email=? and cart.orderDate is not NULL");
    pst.setString(1, email);
    rs = pst.executeQuery();

    while (rs.next()) {
        sno++;

%>
          <tr>
            <td><%= sno %></td>
            <td><%= rs.getString(17) %></td>
            <td><%= rs.getString(18) %></td>
            <td><i class="fa fa-inr"></i> <%= rs.getString(19) %></td>
            <td><%= rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%= rs.getString(5) %> </td>
            <td><%= rs.getString(11) %></td>
            <td><%= rs.getString(12) %></td>
            <td><%= rs.getString(13) %></td>
            <td><%= rs.getString(15) %></td>
          </tr>
<%
    }
} catch(Exception e) {
    out.println(e);
} finally {
    try {
        if (rs != null) {
            rs.close();
        }
        if (pst != null) {
            pst.close();
        }
        if (con != null) {
            con.close();
        }
    } catch (SQLException ex) {
        out.println(ex);
    }
}
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>
