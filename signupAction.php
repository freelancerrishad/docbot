<?php
$check = 0;
$check_pass = 0;
$check_email  = 0;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include 'conn.php';

    $firstName = mysqli_real_escape_string($conn, $_POST["firstName"]);
    $lastName = mysqli_real_escape_string($conn, $_POST["lastName"]);
    $dateOfBirth = mysqli_real_escape_string($conn, $_POST["dateOfBirth"]);
    $gender = mysqli_real_escape_string($conn, $_POST["gender"]);

    $email = mysqli_real_escape_string($conn, $_POST['email']);

    $pass1 = mysqli_real_escape_string($conn, $_POST["password"]);

    $pass2 = mysqli_real_escape_string($conn, $_POST["confirmPassword"]);

    $image = $_FILES['image'];

    $img_name = $_FILES['image']['name'];
    $img_size = $_FILES['image']['size'];
    $tmp_name = $_FILES['image']['tmp_name'];
    $error = $_FILES['image']['error'];

    if ($pass1 != $pass2) {
        echo '<script>alert("Your password does not match to each other");window.location.href="signup.php"</script>';
    } else {
        $password = md5($pass1);
        if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM signup WHERE email='{$email}'")) > 0) {
            echo "<script>alert('{$email} - This email has already taken.');
            window.location.href='signup.php';
            </script>";
        }
        echo "<pre>";
        print_r($error);
        echo "</pre>";
        if ($error === 0) {
            if ($img_size > 125000000) {
                echo '<script>alert("Sorry, your file is too large."); window.location.href="signup.php"</script>';
            } else {


                $img_ex = pathinfo($img_name, PATHINFO_EXTENSION);
                $img_ex_lc = strtolower($img_ex);

                $allowed_exs = array("jpg", "jpeg", "png");

                if (in_array($img_ex_lc, $allowed_exs)) {
                    $new_img_name = uniqid("IMG-", true) . '.' . $img_ex_lc;
                    $img_upload_path = 'uploads/' . $new_img_name;
                    move_uploaded_file($tmp_name, $img_upload_path);

                    $sql = "INSERT INTO signup(firstName,lastName,dateOfBirth,gender,email,pass,image) VALUES ('{$firstName}', '{$lastName}','{$dateOfBirth}','{$gender}','{$email}','{$password}','{$new_img_name}')";
                    $result = mysqli_query($conn, $sql);
                    if ($result) {
                        echo "<script>alert('your signup successfull.');
                window.location.href='index.html';
                </script>";
                    } else {
                        echo "error";
                    }
                } else {
                    echo '<script>alert("You can not upload this type of file"); window.location.href="signup.php"</script>';
                }
            }
        } else {
            echo '<script>alert("unknown error occurred!"); window.location.href="signup.php"</script>';
        }
    }
}
