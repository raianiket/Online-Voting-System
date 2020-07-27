<?php
/*session_start();
if(!$_SESSION['email'] )
{
header('location: login.php');
}

*/
?>

<!DOCTYPE>
<head> 
	<html>
	<title>Online Voting System</title>

	<link rel="stylesheet" href="style.css" type="text/css" / >
	<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css" type="text/css" / >
	</head>
	<body>
<div id="container">
<div class="header">
		<h2>Online Voting System</h2>
	</div>
<nav>
	<div class="navigation">
<ul>

	<li><a href="onlinevotingsystemadmin.php"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
	<li><a href="onlinevotingsystemadmin.php?AddCandidate">Add Candidate</a></li>
	<li><a href="onlinevotingsystemadmin.php?AddPosition">Add Position</a></li>
	<li><a href="onlinevotingsystemadmin.php?RegisterStudent">Register Voter</a></li>
	<li><a href="onlinevotingsystemadmin.php?Positions">Positions</a></li>
	<li><a href="onlinevotingsystemadmin.php?Candidates">Candidates</a></li>
    <li><a href="onlinevotingsystemadmin.php?Students">Voter</a></li>
	
	<li><a href="logout.php">Logout</a></li>

</ul>

</div>
	</nav>
<article>
<div id= "AddCandidate"> 
	<?php
if(isset($_GET['AddCandidate'])){

	 include('AddCandidate.php');
}
else if(isset($_GET['AddPosition'])){

	 include('AddPosition.php');
} else if(isset($_GET['Positions'])){

	 include('Positions.php');
} else if(isset($_GET['Candidates'])){

	 include('Candidates.php');
}else if(isset($_GET['RegisterStudent'])){

	 include('RegisterStudent.php');
}else if(isset($_GET['Students'])){

	 include('Students.php');
}



	?>

</div>
</article>


<footer>
	<p>Online Voting System <?php echo Date('Y'); ?> All Rights Reserved</p>
<footer>
	</body>
	</html>