<?php
               if ($_SERVER["REQUEST_METHOD"] == "POST") {
                  include 'conn.php';
                  if (empty($_POST['email']) || empty($_POST['password'])) {
                     echo '<script>alert("All field must be fill by you")</script>';
                     die();
                  } else {
                     $email = mysqli_real_escape_string($conn, $_POST['email']);
                     $password = $_POST['password'];
               

                     $sql = "SELECT * FROM hospital WHERE email = '$email' AND password = '$password' ";
                     
                     $result = mysqli_query($conn, $sql) or die("Query Failed");

                     if (mysqli_num_rows($result) > 0) {

                        while($row =  mysqli_fetch_assoc($result)){
                        session_start();
                        if($row['verify']=='1'){
                           $_SESSION['name'] = $row['name'];
                           $_SESSION["id"] = $row['id'];
                           
                           header("Location: hospital");
                        }
                        else if($row['verify']=='0'){
                           echo "<script>alert('Your account is not verified yet.'); window.location.href='hospital.php'</script>";
                        }
                        else{
                           echo "<script>alert('You are rejected. Please signup again'); window.location.href='hospital.php'</script>";
                        }
                        
                     }
                  }
                     else{
                        echo '<script>alert("Username and password are not matched");
                           window.location.href="index.html";
                        </script>';
                      }
                  }
               }
