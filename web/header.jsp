<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
        <%string email=session.getAttribute("email").toString();%>
        <center><h2>Ecommerce website</h2></center>
        <h2><a href=""><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
        <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
        <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
     