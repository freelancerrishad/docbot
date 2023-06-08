
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ajax script -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>

    <title>DocBot Signup Page</title>
    <link rel="stylesheet" type="text/css" href="./css/signup.css">
    <!-- tailwind css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.min.css" rel="stylesheet" />

</head>

<body>

    <div id="spinner1" class="bg-blue-500 h-[950px] flex justify-center items-center flex-col">
        
        <div class="flex justify-center items-center flex-col">
            <span class="loader"></span>
            <p class="loaders">DocBot</p>
        </div>

    </div>

    <div id="list1" class="hidden grid md:grid-cols-3 grid-cols-1">
        <div class="md:col-span-2 p-14">
        <form action="hospitalAction.php" method="post" enctype="multipart/form-data">
          
            <h1 class="font-bold md:text-5xl text-2xl">Hospital Signup</h1>
            <p class="mt-5 text-2xl text-[#8692A6]">Become a member and enjoy exclusive service</p>
            <div class="mt-5">
                <div class="grid md:grid-cols-2 md:gap-6">
                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="name" id="name"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="name"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Hospital Name</label>


                    </div>

                    <div class="relative z-0 w-full mb-6 group">
                        <input type="number" name="number" id="number"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="number"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Contact Number</label>


                    </div>

                </div>

                <div class="grid md:grid-cols-2 md:gap-6">
                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="location" id="location"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="location"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Hospital Location</label>


                    </div>

                    <div class="relative z-0 w-full mb-6 group">
                        <input type="password" name="password" id="password"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="password"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Password</label>


                    </div>

                </div>

                <div class="grid md:grid-cols-2 md:gap-6">
                    <div class="relative z-0 w-full mb-6 group">
                        <input type="email" name="email" id="email"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="email"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Email</label>


                    </div>

                    <div class="relative z-0 w-full mb-6 group">
                        <input type="password" name="confirmPassword" id="confirmPassword"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="confirmPassword"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Confirm Password</label>


                    </div>

                </div>

           

                
      
                    <div class="relative z-0 w-full mb-6 group">
                        <button class="w-full bg-blue-500 text-white py-3 rounded-xl text-xl font-bold">Sign Up</button>

                    </div>

                  

                


            </div>
        </form>
        <div class="lg:flex justify-between items-center mt-14">
            <div>
                <a href="signup.php" class="w-full bg-[#956EC6] text-white py-3 rounded-xl text-xl font-bold px-14 cursor-pointer">Sign Up As A User</a>
    
            </div>
            <div class="mt-10 lg:mt-0">
                <p class="font-bold text-xl">Already Have An Account ? <a href="index.html" class="text-blue-800 underline">Login Here</a></p>
            </div>
        </div>
        </div>
        <div class="bg-[url(./images/doctor_bg.png)] bg-no-repeat h-[59em] md:w-3/4 lg:w-full md:bg-contain lg:bg-cover"> 
          <img src='./images/hospital.png' alt="" class="h-[45em] mt-56 ml-14">
        </div>


    </div>
    <script>
        const spinner = document.getElementById('spinner1')
        const list = document.getElementById('list1')
        console.log(list)

        $.ajax({
            type: 'GET',
            url: 'signup.php',
            success: function (res) {
                console.log("success")
                setTimeout(() => {
                    spinner.classList.add('hidden')
                    list.classList.remove('hidden')
                }, 3000)



            },
            error: function (err) {
                console.log('fail')
                console.log(err.type)
            }
        })
    </script>
    <!-- tailwind css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.min.js"></script>

</body>

</html>