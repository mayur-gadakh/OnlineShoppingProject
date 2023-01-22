<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>

			<form action="forgotPasswordAction.jsp" method="post">
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="number" name="number" placeholder="Enter Mo.Number"
					required> <select name="SecurityQuestion" required>
					<option value="What was your first car?">What was your
						first car?</option>
					<option value="What is the name of your fiest pet?">What
						is the name of your first pet?</option>
					<option value="What elementry school you are attented?">What
						elementry school you are attented?</option>
					<option value="What is name of the town where you are born? ">What
						is name of the town where you are born?</option>
				</select> <input type="text" name="answer" placeholder="Enter the Answer"
					required> <input type="password" name="newpassword"
					placeholder="Enter new Password" required> <input
					type="submit" value="save">


			</form>


			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whyforgotPassword'>
			<%
			String msg = request.getParameter("msg");

			if ("done".equals(msg)) {
			%>


			<h1>Password Changed Successfully!</h1>
			<%
			}
			%>
			<%
			if ("invalid".equals(msg)) {
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%
			}
			%>
			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>
	</div>
</body>
</html>