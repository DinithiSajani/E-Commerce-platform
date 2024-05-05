
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="logo.png" type="image/png" sizes="20x20"><!-- comment -->
        <link rel="stylesheet" href="css/signup-style.css"><!-- comment -->
        <title>Login</title>
    </head><!-- comment -->
    <body>
        <div id='container'>
            <div class='signup'>
                <form action="loginAction.jsp" method="post">
                    <input type="email" name="email" placeholder="Enter Email" required>
                    <input type="password" name="email" placeholder="Enter Password" required>
                    <input type="submit" value="login">
                           </form>
                <h2><a href="signup.jsp">SignUp</a></h2>
                <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
            </div>
            <div class='whysignLogin'>
                <%
                    
                    String msg=request.getParameter("msg");
                    if("noteexist".equals(msg)) {
                    %>
                    <h1>Incorrect Username or Password</h1><!-- comment -->
                    <%} %>
                    <%
if("invalid".equals(msg)){
                    %>
                    <h1>Some thing Went wrong! Try Again!</h1><!-- comment -->
                    <% } %>
                    <h2>ECommerce website</h2><!-- comment -->
                     
            </div>
        </div>
    </body>
             
</html>