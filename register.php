<!DOCTYPE>
<head> 
	<html>
	<title>Online Voting System</title>

	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	</head>
	<body>
<div id="container">
<div class="header">
	<h2>Online Voting System</h2>
	</div>
<div id="loginform">


	<form method="post" action="functions.php">
<input type="text" name="first_name" placeholder="First Name" required/><br /><br />
<input type="text" name="last_name" placeholder="Last Name" required/><br /><br />
<input type="Email" name="email" placeholder="Email" required/><br /><br />
<input type="password" name="password" placeholder="Password" required/><br /><br />
<input type="submit" name="submitregdetailsadmin" Value="Register"/><br /><br />

	</form><br /><br />
	<button class="btn btn-primary btn-block"> <a class="hoverable" href="login.php"><h4 style="color:black">Back To Login Page Click here<h4></a></button>
</div>


<footer>
	<p >Online Voting System <?php echo Date('Y'); ?> All Rights Reserved</p>
<footer>
	</body>
	</html>