

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ajax script -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>

    <title>DocBot Login Page</title>
   <style>
    .loader {
    animation: rotate 1s infinite;
    height: 50px;
    width: 50px;
  }

  .loader:before,
  .loader:after {
    border-radius: 50%;
    content: "";
    display: block;
    height: 20px;
    width: 20px;
  }
  .loader:before {
    animation: ball1 1s infinite;
    background-color: #fff;
    box-shadow: 30px 0 0 #ff3d00;
    margin-bottom: 10px;
  }
  .loader:after {
    animation: ball2 1s infinite;
    background-color: #ff3d00;
    box-shadow: 30px 0 0 #fff;
  }

  @keyframes rotate {
    0% { transform: rotate(0deg) scale(0.8) }
    50% { transform: rotate(360deg) scale(1.2) }
    100% { transform: rotate(720deg) scale(0.8) }
  }

  @keyframes ball1 {
    0% {
      box-shadow: 30px 0 0 #ff3d00;
    }
    50% {
      box-shadow: 0 0 0 #ff3d00;
      margin-bottom: 0;
      transform: translate(15px, 15px);
    }
    100% {
      box-shadow: 30px 0 0 #ff3d00;
      margin-bottom: 10px;
    }
  }

  @keyframes ball2 {
    0% {
      box-shadow: 30px 0 0 #fff;
    }
    50% {
      box-shadow: 0 0 0 #fff;
      margin-top: -20px;
      transform: translate(15px, 15px);
    }
    100% {
      box-shadow: 30px 0 0 #fff;
      margin-top: 0;
    }
  }
  

  .loaders {
    font-size: 48px;
    font-weight: 600;
    display: inline-block;
    letter-spacing: 2px;
    font-family: Arial, Helvetica, sans-serif;
    color: #FFF;
    box-sizing: border-box;
    animation: spotlight 2s linear infinite alternate;
  }
  
  @keyframes spotlight {
    0% , 20% {
      opacity: 1;
      letter-spacing: 2px;
     }
   80% , 100% {
      opacity: 0;
      letter-spacing: 32px;
     }
  }
#back{
    background-image: url(./images/doctor_bg.png);
}
   </style>
    <!-- tailwind css -->
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.min.css" rel="stylesheet" />

     <!-- fontawsome -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
</head>

<body>

    <div id="spinner1" class="bg-blue-500 h-[950px] flex justify-center items-center flex-col">

        <div class="flex justify-center items-center flex-col">
            <span class="loader"></span>
            <p class="loaders">DocBot</p>
        </div>

    </div>

    <div id="list1" class="hidden grid md:grid-cols-3 grid-cols-1">

        <div class="h-[59em] md:w-3/4 lg:w-full
            md:bg-contain lg:bg-cover" id="back">
            <img src='./images/doctor1.png' alt="" class="h-[46em] mt-52 ml-14">
        </div>
        <div class="ml-14 mt-10">




            <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">

                <div class="w-full bg-white rounded-lg shadow md:mt-0 sm:max-w-md xl:p-0">
                    <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                        <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">
                            Admin Login
                        </h1>
                        

                        <form class="space-y-4 md:space-y-6" action="login.php" method="post">
                           
                            <div>
                                <label for="username" class="block mb-2 text-sm font-medium text-gray-900 ">Your
                                    username</label>
                                <input type="text" name="username" id="email"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                    placeholder="name@company.com" required="">
                            </div>
                            <div>
                                <label for="password"
                                    class="block mb-2 text-sm font-medium text-gray-900 ">Password</label>
                                <input type="password" name="password" id="password" placeholder="••••••••"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 "
                                    required="">
                            </div>

                            <button type="submit"
                                class="w-full text-white bg-blue-600 hover:bg-[#32B4D0] focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">Sign
                                in</button>
                        </form>
                       
                       
                       

                    </div>
                </div>
            </div>

        </div>


    </div>


    <script>
        const spinner = document.getElementById('spinner1')
        const list = document.getElementById('list1')

        $.ajax({
            type: 'GET',
            url: '',
            success: function (res) {
                console.log("success")
                setTimeout(() => {
                    spinner.classList.add('hidden')
                    list.classList.remove('hidden')
                }, 3000)



            },
            error: function (err) {
                console.log('fail')
                console.log(err)
            }
        })
    </script>
    <!-- tailwind css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.min.js"></script>

</body>

</html>