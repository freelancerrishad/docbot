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
        <h1 class="text-4xl">ON DISEASE PREDICTION WITH TEXT</h1>
            <div>
            <center>

    <form class="flex flex-col gap-10 justify-center items-center mt-14" action="predict.php" method="post">
    <!-- <i class="fa-solid fa-microphone border-4 border-rose-300 rounded-full w-20 h-20 text-5xl flex justify-center items-center"></i> -->
       
        <textarea name="record_text" id="convert_text" cols="100" rows="5" class="mt-5 border border-blue-300 focus:border-rose-300 rounded-xl"></textarea>
        
        <button class="px-10 py-3 hover:bg-blue-400 hover:text-white border border-blue-500 rounded-xl transition-all duration-200 ease-in	">Submit</button>

       
    </form>

  
    </center>
            </div>
        </div>
        
    </section>
    <script src="js/main.js"></script>
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
