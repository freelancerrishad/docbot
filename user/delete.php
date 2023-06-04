<?php
	session_start();
	include_once('conn.php');

	$id = $_GET['id'];

	if(isset($id)){
		$sql1 = "SELECT * FROM history WHERE id = {$id}";
		$result = mysqli_query($conn, $sql1) or die("Query Failed : Select");
		$row = mysqli_fetch_assoc($result);
	  

		$sql = "DELETE FROM history WHERE id = '$id'";
		

		//use for MySQLi OOP
		if($conn->query($sql)){
			echo "<script>alert('Your History deleted successfully'); window.location.href='history.php'</script>";
		}
		////////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member deleted successfully';
		// }
		/////////////////
		
		else{
			echo "<script>alert('Something went wrong'); window.location.href='history.php'</script>";
		}
	}
	else{
		$_SESSION['error'] = 'Select Property to delete first';
	}
?>