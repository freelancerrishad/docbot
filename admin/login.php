<?php
               if ($_SERVER["REQUEST_METHOD"] == "POST") {
                  include 'conn.php';
                  if (empty($_POST['username']) || empty($_POST['password'])) {
                     echo '<script>alert("All field must be fill by you")</script>';
                     die();
                  } else {
                     $username = mysqli_real_escape_string($conn, $_POST['username']);
                     $password = $_POST['password'];
           

                     $sql = "SELECT * FROM admin WHERE username = '$username' AND password = '$password' ";
                     
                     $result = mysqli_query($conn, $sql) or die("Query Failed");

                     if (mysqli_num_rows($result) > 0) {

                        while($row =  mysqli_fetch_assoc($result)){
                        session_start();
                        
                        $_SESSION['username'] = $row['username'];
                        $_SESSION["id"] = $row['id'];
                        
                        header("Location: home");
                     }
                  }
                     else{
                        echo '<script>alert("Username and password are not matched");
                           window.location.href="index.php";
                        </script>';
                      }
                  }
               }
