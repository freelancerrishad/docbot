<?php
$check = 0;
$check_pass = 0;
$check_email  = 0;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include 'conn.php';

    $name = mysqli_real_escape_string($conn, $_POST["name"]);
    $number = mysqli_real_escape_string($conn, $_POST["number"]);
    $location = mysqli_real_escape_string($conn, $_POST["location"]);

    $email = mysqli_real_escape_string($conn, $_POST['email']);

    $pass1 = mysqli_real_escape_string($conn, $_POST["password"]);

    $pass2 = mysqli_real_escape_string($conn, $_POST["confirmPassword"]);



    if ($pass1 != $pass2) {
        echo '<script>alert("Your password does not match to each other");window.location.href="signup_hospital.php"</script>';
    } else {
        $password = md5($pass1);
        if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM hospital WHERE email='{$email}'")) > 0) {
            echo "<script>alert('{$email} - This email has already taken.');
            window.location.href='signup.php';
            </script>";
        }
        else{
            $sql = "INSERT INTO hospital(name,contact_num,location,email,password,verify) VALUES ('{$name}', '{$number}','{$location}','{$email}','{$pass1}','0')";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                echo "<script>alert('your signup successfull.');
                window.location.href='hospital.php';
                </script>";
            }
        }
        

         
        
    }
}
