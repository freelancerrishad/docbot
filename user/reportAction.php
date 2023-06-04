<?php 
session_start();
 if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include 'conn.php';
    $report = $_POST['report'];

    $name = $_SESSION['firstName'];
    
    $sql = "INSERT INTO report(name,report) VALUES ('$name','$report')";
    
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo "<script>alert('Your Report Submitted Successful.');
window.location.href='index.php';
</script>";
    } else {
        echo "error";
    }
 
}
