
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="E:\Github\HFHUB\web\image\logo.png" type="image/jpg" sizes="1920�1080">
        <link rel="background" href="E:\Github\HFHUB\web\image\bg.jpg" type="image/jpg" sizes="1920�1080">
        <link rel="stylesheet" href="css/signup-style.css">
        <title>Login</title>
    </head>
    <body>
        <div id='container'>
            <div class='signup'>
                <form action="loginAction.jsp" method="post">
                    <input type="email" name="email" placeholder="Enter Email" required>
                    <input type="password" name="password" placeholder="Enter Password" required>
                    <input type="submit" value="login">
                </form>
                <h2><a href="signup.jsp">SignUp</a></h2>
                <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
            </div>
            <div class='whysignLogin'>
                <%

                    String msg = request.getParameter("msg");
                    if ("notexist".equals(msg)) {
                %>
                <h1>Incorrect Username or Password</h1>
                <%} %>
                <%
                    if ("invalid".equals(msg)) {
                %>
                <h1>Some thing Went Wrong! Try Again !</h1>
                <%}%>
               
                <img src="image\logo.png" alt="" style=" height: 320px; width: 450px">


            </div>
        </div>

    </body>
</html>