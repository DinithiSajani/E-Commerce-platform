<<<<<<< HEAD
=======

>>>>>>> main
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
<<<<<<< HEAD
  <form action="SignupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion" required>
  <option value="What was your first car?">What was your first car?</option>
   <option value="What is the name of your first pet?">What is the name of your first pet</option>
    <option value="What primary school did you attend?">What primary school did you attend?</option>
     <option value="What is the name of the town where you were born?">What is the name of the town where you were born</option>
  </select>
  <input type="text" name="answer" placeholder="Enter Answer" required>
   <input type="password" name="password" placeholder="Enter Password" required>
   <input type="submit" value="signup">
  </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals("msg"))
  {
  %>

<h1>Successfully Registered !</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
=======
  <form action="" method="post">
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobilenumber" placeholder="Enter Mobile number" required>
  <select name="securityQuestion" required>
  <option value="what was your first car?">What was your first car?</option>
  <option value="What is the name of your first pet?">What is the name of your first pet?</option>
  <option value="What's your school?">What's your school?</option>
  <option value="What's your hometown?">What's your hometown?</option>
  </select>
  <input type="text" name="answer" placeholder="Enter Answer" required>
  <input type="password" name="password" placeholder="Enter Password" required>
  <input type="submit" value="signup">
  </form>
    
      <h2><a href="">Login</a></h2>
  </div>
  <div class='whysign'>

<h1>Successfully Updated</h1>


<h1>Some thing Went Wrong! Try Again !</h1>
>>>>>>> main

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>