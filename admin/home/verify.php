<?php include 'header.php'; ?>

<?php
include 'conn.php';
?>

<!DOCTYPE html>

<?php
include "conn.php";
session_start();

if (!isset($_SESSION["id"])) {
    echo "<script>alert('Please Login to continue'); window.location.href='../index.php';</script>";
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


    <section class="home" style="height: 100%;">


        <div class="px-16 mt-5 text">

            <div class="grid grid-cols-4 gap-10">
                <?php

                $sql =  "SELECT * FROM hospital";
                $result = mysqli_query($conn, $sql) or die("Query Failed");

                if (mysqli_num_rows($result) > 0) {

                    while ($row =  mysqli_fetch_assoc($result)) {
                        if($row['verify']=='0'){
                ?>

                        <div class="max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow text-center">
                            
                            <a href="#">
                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 mt-5"><?php echo $row['name'];?></h5>
                            </a>
                            <p class="mb-3 font-normal text-gray-700 text-center mt-5"><i class="fa-regular fa-address-book mr-3"></i><?php echo $row['contact_num']; ?></p>
                            <p class="mb-3 font-normal text-gray-700 text-center mt-5 text-rose-500x"><i class="fa-solid fa-envelope mr-3"></i><?php echo $row['email']; ?></p>
                            <p class="mb-3 font-normal text-gray-700 text-center mt-5 text-rose-500 "><i class="fa-solid fa-location-dot mr-3"></i><?php echo $row['location']; ?></p>
                           

                          <div class="flex justify-between">
                          <a href="approve.php?id=<?php echo $row['id'] ?>" class="mt-5 inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-green-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 ">
                          <i class="fa-solid fa-check-double mr-3"></i>   Approve

                            </a>

                            <a href="reject.php?id=<?php echo $row['id'] ?>" class="mt-5 inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-red-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 ">
                            <i class="fa-solid fa-xmark mr-3"></i> Reject

                            </a>

                          </div>
                        </div>

                <?php } }
                }

                ?>



            </div>

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


        toggle.addEventListener("click", () => {
            sidebar.classList.toggle("close");
        })

        searchBtn.addEventListener("click", () => {
            sidebar.classList.remove("close");
        })

        modeSwitch.addEventListener("click", () => {
            body.classList.toggle("dark");

            if (body.classList.contains("dark")) {
                modeText.innerText = "Light mode";
            } else {
                modeText.innerText = "Dark mode";

            }
        });
    </script>

</body>

</html>