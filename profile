<?php 
session_start();

	include ("server.php");
	include ("functions.php");
	
	$user_data = check_login($conn);
	

	
?>

<html lang="en">
<head>
	<title> Profile Page </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<?php 
	include 'index.php';
	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$course = $_POST['course'];
		$query = "INSERT into 'tblstudent'(email,password,firstName,LastName,address,phone,course) values('$email','$password','$firstName','$LastName','$address','$phone','$course')";
		(!mysqli_query($conn, $query));

		
	}
?>

	<div class="container text-center">
	<hl>Welcome To Your Account</hl>
	</div>
	
	<a href = "logout.php">Logout</a>
	
	<br>

	

	<table border = "2" align = "center">
	
			<tr>
				<td>
				<label>Email : </label></td>
				<?PHP
					echo "<td>";
						echo $user_data['email'];
					echo "</td>";
				?>
			</tr>
	
			<tr>
				<td>
				<label>Password : </label></td>
				<?PHP
					echo "<td>";
						echo $user_data['password'];
					echo "</td>";
				?>
			</tr>
	
			<tr>
				<td>
				<label>First Name : </label></td>
				<?PHP
					echo "<td>";
						echo $user_data['firstName'];
					echo "</td>";
				?>
			</tr>
	
			<tr>
				<td>
				<label>Last Name : </label></td>
				<?PHP
					echo "<td>";
						echo $user_data['LastName'];
					echo "</td>";
				?>
			</tr>
	
			<tr>
				<td>
				<label>Address : </label></td>
				<?PHP
					echo "<td>";
						echo $user_data['address'];
					echo "</td>";
				?>
			</tr>
	
			<tr>
				<td>
				<label>Phone number : </label></td>
				<?PHP
					echo "<td>";
						echo $user_data['phone'];
					echo "</td>";
				?>
			</tr>
			<tr>
				<td>
				<label>Courses : </label></td>
				<?PHP
					echo "<td>";
						echo $user_data['course'];
					echo "</td>";
				?>
			</tr>
	<from method="POST" >
		<div style="text-align: center:">
		<label for="Add Course"> Add a course:</label>
		<select name="course">
			<option >--Select--</option>
			<option value="cst499">CST499</option>
			<option value="cst310">CST310</option>
		</select>
		<br><br>
		<p><input type="submit" name="submit" Value="ADD COURSE"></p>
		</div>
		
		<div style="text-align: center:">
		<label for="Remove Course"> Remove a course:</label>
		<select name="course">
			<option >--Select--</option>
			<option value="cst499">CST499</option>
			<option value="cst310">CST310</option>
		</select>
		<br><br>
		<input type="submit" Value="Remove COURSE">
		</div>
	</from>
	
<?php include 'footer.php';?>
</body>
</html>
