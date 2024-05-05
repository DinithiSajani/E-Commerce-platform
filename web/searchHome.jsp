<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
    <head>
        <link rel="icon" href="" type="" sizes=""><!-- comment -->
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><!-- comment -->
        <title>Home</title><!-- comment -->
    </head>
    <body>
        <div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i> </div><!-- comment -->
        <table>
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Category</th><!-- comment -->
                    <th scope="col"><i class="fa fa-inr"></i>Price</th><!-- comment -->
                    <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
                </tr>
            </thead>
            <tbody>
                <%
                    int z=0;
                    
                    try{
                    String search=request.getParameter ("search");
                    ConnectionProvider conProvider =new ConnectionProvider();
                    Connection con=conProvider.getCon();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from product where name like '%"+search+"%' or category like '%"+search+"%' and active='yes'");
                    while(rs.next()) {
                    z=1;
                    
                    
                    
                    <tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><i class="fa fa-inr"></i>     <%=rs.getString(4) %></td><!-- comment -->
<td><a href="addToCartAction.jsp?id=<%rs.getString(1) %>">Add to Cart <i class='fas fa-cart-plus'></i></a></td>
        </tr><!-- comment -->
        <%
                    }
                    } catch(Exception e){
System.out.println(e);
}
            </tbody>
        </table>
<%if(z==0) { %>
<h1 style="color:white; text-align: center; ">Nothing to show</h1><!-- comment -->
<br>
<br><!-- comment -->
<br><!-- comment -->
<div class="footer">
    <p><!-- comment --></p><!-- comment -->
</div>
    </body>
        </html>