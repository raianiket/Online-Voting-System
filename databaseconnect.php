<?php

$connect = mysqli_connect("localhost", "root", "");
$selectdb = mysqli_select_db($connect, "OnlineVotingSystem");

if($selectdb) {
	//echo "connection and datadase selection successfull <br /><br />";
}



?>