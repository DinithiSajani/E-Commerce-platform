
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
            }
    </body>
</html>