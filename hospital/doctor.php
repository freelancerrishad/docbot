<?php
session_start();
$check = 0;
$check_pass = 0;
$check_email  = 0;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include 'conn.php';

    $disease_name = mysqli_real_escape_string($conn, $_POST["disease_name"]);
    $dr_name = mysqli_real_escape_string($conn, $_POST["dr_name"]);
    $dr_email = mysqli_real_escape_string($conn, $_POST["dr_email"]);
    $phone = mysqli_real_escape_string($conn, $_POST["phone"]);

    $institute = mysqli_real_escape_string($conn, $_POST['institute']);

    $degree = mysqli_real_escape_string($conn, $_POST["degree"]);

    $specialized = mysqli_real_escape_string($conn, $_POST["specialized"]);
$hospital_name = $_SESSION['name'];
    $image = $_FILES['image'];

    $img_name = $_FILES['image']['name'];
    $img_size = $_FILES['image']['size'];
    $tmp_name = $_FILES['image']['tmp_name'];
    $error = $_FILES['image']['error'];

    
        if ($error === 0) {
            if ($img_size > 125000000) {
                echo '<script>alert("Sorry, your file is too large."); window.location.href="signup.php"</script>';
            } else {


                $img_ex = pathinfo($img_name, PATHINFO_EXTENSION);
                $img_ex_lc = strtolower($img_ex);

                $allowed_exs = array("jpg", "jpeg", "png");

                if (in_array($img_ex_lc, $allowed_exs)) {
                    $new_img_name = uniqid("IMG-", true) . '.' . $img_ex_lc;
                    $img_upload_path = '../user/images/' . $new_img_name;
                    move_uploaded_file($tmp_name, $img_upload_path);

                    $sql = "INSERT INTO dr_info(disease_name,dr_name,dr_email,dr_phone,institution,Degree,specialized,associate_Hospital, img) VALUES ('{$disease_name}', '{$dr_name}','{$dr_email}','{$phone}','{$institute}','{$degree}','{$specialized}','{$hospital_name}','{$new_img_name}')";
                    $result = mysqli_query($conn, $sql);
                    if ($result) {
                        echo "<script>alert('Dr Entry successful.');
                window.location.href='index.php';
                </script>";
                    } else {
                        echo "error";
                    }
                } else {
                    echo '<script>alert("You can not upload this type of file"); window.location.href="index.php"</script>';
                }
            }
        } else {
            echo '<script>alert("unknown error occurred!"); window.location.href="index.php"</script>';
        }
    
}
