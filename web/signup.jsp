<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="css/signup-style.css">
    <link rel="icon" href="" type="" sizes=""><!-- comment -->
    <title>Signup</title><!-- <!-- comment --> -->
</head>
<body>
    <div id='container'>
        <div class='signup'>
            <form action="signupAction.jsp" method="post">
                <input type="text" name="name" placeholder="Enter Name" required>
                <input type="email" name="email" placeholder="Enter Email" required><!-- comment -->
                <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
                <select name="securityQuestion" required>
                    <option value="what was your first car?">What was your first car?</option>
                    <option value="What is the name of your pet?">What is the name of your pet?</option>
                    <option value="What elementary school did you attended?">What elementary school did you attended?</option><!-- comment -->
                    <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
                    
                </select>
                <input type="text" name="answer" placeholder="Enter Answer" required><!-- comment -->
                <input type="password" name="password" placeholder="Enter Password" required>
                <input type="submit" value="signup"><!-- comment -->
                            </form>
            <h2><a href="login.jsp">Login</a></h2><!-- comment -->
        </div>
        <div class='whysign'>
            <%
                String msg=request.getParameter("msg");
                if("valid".equals(msg))
                {
                
                %>
                <h1>Successfully Registered</h1><!-- comment -->
                <%} %>
                <%
                    if("invalid".equals(msg))
                    {
                    %>
                    <h1>Something Went Wrong! Try Again !</h1>
                    
                    <h2>Ecommerce website</h2><!-- <!-- comment --> -->
                    <p><a href="" style=""></a></p><!-- comment -->
                    <p><a href="" style=""></a></p><!-- comment -->
        </div>
    </div>
             
</body>
</html>