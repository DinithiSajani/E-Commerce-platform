<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
<<<<<<< HEAD
<<<<<<< HEAD
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  <select>
  <option value="What was your first car?">What was your first car?</option>
  <option value="What is the name of your first pet?">What is the name of your first pet?</option>
  <option value="What primary school did you attend?">What primary school did you attend?</option>
  <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  </select>
   <input type="text" name="answer" placeholder="Enter answer" required>
   <input type="password" name="newPassword" placeholder="Enter ypur new password" required>
   <input type="submit" value="Save">
  </form>
  
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
  %>
   
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
=======
=======
>>>>>>> Dinithi
     
      <h2><a href="">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   
<h1>Password Changed Successfully!</h1>

<h1>Some thing Went Wrong! Try Again !</h1>

<<<<<<< HEAD
>>>>>>> main
=======
>>>>>>> Dinithi
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>