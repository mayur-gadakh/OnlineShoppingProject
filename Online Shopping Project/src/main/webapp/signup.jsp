<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" method="post">
				<input type="text" name="name" placeholder="Enter Name"
					required="required"> <input type="email" name="email"
					placeholder="Enter Email" required="required"> <input
					type="number" name="mobilenumber" placeholder="Enter Mobile Number"
					required="required"> <select name="SecurityQuestion"
					required="required">
					<option value="What was your first car?">What was your
						first car?</option>
					<option value="What is the name of your fiest pet?">What
						is the name of your first pet?</option>
					<option value="What elementry school you are attented?">What
						elementry school you are attented?</option>
					<option value="What is name of the town where you are born? ">What
						is name of the town where you are born?</option>
				</select> <input type="text" name="answer" placeholder="Enter Answer"
					required="required"> <input type="password" name="password"
					placeholder="Enter Password" required="required"> <input
					type="submit" value="signup">

			</form>

			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
			<h1>Successfully Register</h1>
			<%} %>
			<%
if("invalid".equals(msg)){
	
%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%} %>
			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>
	</div>

</body>
</html>