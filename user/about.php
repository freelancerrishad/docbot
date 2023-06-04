<?php 
 include 'conn.php';
?>

<!DOCTYPE html>

<?php
  include "conn.php";
   session_start();

  if(!isset($_SESSION["id"])){
    echo "<script>alert('Please Login to continue'); window.location.href='../index.html';</script>";
    
  }

?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="css/style.css">
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>DOCBOT</title> 
</head>
<body>
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img src="../img/logo.png" alt="">
                </span>

                <div class="text logo-text">
                    <span class="name">DOCBOT</span>
                    
                </div>
            </div>

            <i class='bx bx-chevron-right toggle'></i>
        </header>

        <div class="menu-bar">
            <div class="menu">

                <li class="search-box">
                    <i class='bx bx-search icon'></i>
                    <input type="text" placeholder="Search...">
                </li>

                <ul class="menu-links">
                    <li class="nav-link">
                    <a href="index.php">
                    <i class="fa-solid fa-house icon"></i>
                           
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="nearby-doctor.php">
                        <i class="fa-solid fa-user-doctor icon"></i>
                            <span class="text nav-text">Explore Nearby Doctor</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="disease-speech.php">
                        <i class="fa-solid fa-microphone icon"></i>
                            <span class="text nav-text">Disease Prediction using Speech</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="disease-text.php">
                        <i class="fa-regular fa-file-lines icon"></i>
                            <span class="text nav-text">Disease Prediction using text</span>
                        </a>
                    </li>

                    
                    <li class="nav-link">
                        <a href="history.php">
                        <i class="fa-solid fa-clock-rotate-left icon"></i>
                            <span class="text nav-text">Prediction History</span>
                        </a>
                    </li>

                    
                    <li class="nav-link">
                        <a href="report.php">
                        <i class="fa-solid fa-triangle-exclamation icon"></i>
                            <span class="text nav-text">Report A Problem</span>
                        </a>
                    </li>

                    

                

                </ul>
            </div>

            <div class="bottom-content">
            <li class="">
                    <?php  
                    $id = $_SESSION['id'];
                      $sql = "SELECT * FROM signup WHERE id = '$id'";
                     
                      $result = mysqli_query($conn, $sql) or die("Query Failed");
                      if (mysqli_num_rows($result) > 0) {

                        while($row =  mysqli_fetch_assoc($result)){
                    ?>
                    <img src="../uploads/<?php echo $row['image']; }}?>" alt="" class="rounded-full w-10 h-10 border border-black mr-10 ml-3">
                 </a>
                       <span class="text nav-text"><?php echo $_SESSION['firstName'] ?></span>
                   
                </li>


                <li class="">
                    
                    <a href="logout.php">
                    <i class='bx bx-log-out icon' ></i></a>
                        <a href="logout.php"><span class="text nav-text">Logout</span></a>
                   
                </li>

                <li class="mode">
                    <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                    <span class="mode-text text">Dark mode</span>

                    <div class="toggle-switch">
                        <span class="switch"></span>
                    </div>
                </li>
                
            </div>
        </div>

    </nav>

    <section class="home" style="height: 100%;">
        <div class="text text-5xl mt-5">WELCOME BACK 
<?php  
    echo $_SESSION['firstName'];
?>

        </div>

        <div class="px-16 mt-5 text">
        <p>Welcome to DocBot, your advanced healthcare prediction platform! At DocBot, we leverage the power of voice and text recognition technology to help you predict potential diseases based on your symptoms and concerns.

We understand that identifying health issues can be challenging, and that's why we've developed a user-friendly interface that allows you to conveniently communicate with DocBot using your voice or by typing. Our cutting-edge algorithms analyze your input and provide you with a list of possible diseases that may align with your symptoms.

Our platform is designed to be accessible and intuitive. Whether you're a tech-savvy individual or someone who prefers a more straightforward approach, DocBot is here to cater to your needs. By utilizing the latest advancements in natural language processing and machine learning, we strive to offer you accurate predictions and actionable insights.

DocBot's prediction capabilities are the result of rigorous research and collaboration with medical experts. We constantly update our database with the latest medical knowledge, ensuring that our predictions are based on reliable information. However, it's important to note that DocBot's predictions are intended for informational purposes only and should not replace a professional medical diagnosis.

Privacy and security are of utmost importance to us. We prioritize the confidentiality of your personal data and adhere to strict privacy policies. Your information is encrypted and stored securely, ensuring that your interactions with DocBot are both private and secure.

We believe in empowering individuals to take control of their health. DocBot is available to you 24/7, enabling you to access disease prediction services at your convenience. Whether you're at home, at work, or on the go, our platform is accessible from any device with an internet connection.

Thank you for choosing DocBot as your trusted healthcare prediction companion. We are dedicated to providing you with accurate disease predictions and helping you make informed decisions about your health. Explore our platform, engage with DocBot, and embark on a journey towards better health and well-being. If you have any questions or feedback, our support team is here to assist you. Your health is our priority!</p>
        </div>
        
    </section>
    <script src="https://cdn.tailwindcss.com"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.min.js"></script>

    <script>
        const body = document.querySelector('body'),
      sidebar = body.querySelector('nav'),
      toggle = body.querySelector(".toggle"),
      searchBtn = body.querySelector(".search-box"),
      modeSwitch = body.querySelector(".toggle-switch"),
      modeText = body.querySelector(".mode-text");


toggle.addEventListener("click" , () =>{
    sidebar.classList.toggle("close");
})

searchBtn.addEventListener("click" , () =>{
    sidebar.classList.remove("close");
})

modeSwitch.addEventListener("click" , () =>{
    body.classList.toggle("dark");
    
    if(body.classList.contains("dark")){
        modeText.innerText = "Light mode";
    }else{
        modeText.innerText = "Dark mode";
        
    }
});
    </script>

</body>
</html>
