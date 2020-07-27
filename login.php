<!DOCTYPE>
<head> 
	<html>
	<title>Online Voting System</title>

	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	</head>
	<body>
<div id="container">
<div class="header">
		<h2>Online Voting System</h2>
	</div>
<div id="loginform">


	<form method="post" action="functions.php">
<i class="fa fa-user-o" aria-hidden="true"></i>
<input type="text" name="regno" placeholder="Email for Admin/Regno for Voter " required/><br /><br />
<i class="fa fa-user-secret" aria-hidden="true"></i>
<input type="password" name="password" placeholder="Password" required/><br /><br />
<i class="fa fa-circle-o-notch" aria-hidden="true"></i>
<select name="type">
	<option value="Admin">Admin</option>
	<option value="Student">Voter</option>
	</select><br /><br />
<i class="fa fa-check" aria-hidden="true"></i>
<input type="submit" name="submitlogindetails" Value="Login"/>
	</form><br /><br />
	<button class="btn btn-primary btn-block"> <a class="hoverable" href="register.php"><h4 style="color:black">New User click here Register here<h4></a></button>
</div>


<footer>
	<p >Online Voting System <?php echo Date('Y'); ?> All Rights Reserved</p>
<footer>
	</body>
	</html>