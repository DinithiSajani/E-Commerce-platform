
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
    <head>
        <link rel="stylesheet" href="../css/addNewProduct-style.css"><!-- comment -->
        <title>Add New Product</title>
    </head>
    <body>
        <%
            String msg=request.getParameter("msg");
            if("done".equals(msg)) {
            %>
            <h3 class="alert">Product Added Successfully!</h3><!--  -->
            <%} %>
            <%
                if("wrong".equals(msg)){
                %>
                <h3 class="alert">Something went wrong!Try Again!</h3><!-- comment -->
                <%} %>
                <%int id=1;
                try{
                ConnectionProvider conProvider = new ConnectionProvider();
                Connection con=conProvider.getCon();
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select max(id) from product");
                while (rs.next ())
                {
                id=rs.getInt(1);
                id=id+1;
                    }
                    
                    }
                    catch(Exception e){
                }
            %>
            }
    </body>
</html>