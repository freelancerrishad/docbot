<?php
               if ($_SERVER["REQUEST_METHOD"] == "POST") {
                  include 'conn.php';
                  if (empty($_POST['email']) || empty($_POST['password'])) {
                     echo '<script>alert("All field must be fill by you")</script>';
                     die();
                  } else {
                     $email = mysqli_real_escape_string($conn, $_POST['email']);
                     $password = $_POST['password'];
                     $password = md5($password);

                     $sql = "SELECT * FROM signup WHERE email = '$email' AND pass = '$password' ";
                     
                     $result = mysqli_query($conn, $sql) or die("Query Failed");

                     if (mysqli_num_rows($result) > 0) {

                        while($row =  mysqli_fetch_assoc($result)){
                        session_start();
                        
                        $_SESSION['firstName'] = $row['firstName'];
                        $_SESSION["id"] = $row['id'];
                        
                        header("Location: user");
                     }
                  }
                     else{
                        echo '<script>alert("Username and password are not matched");
                           window.location.href="index.html";
                        </script>';
                      }
                  }
               }
