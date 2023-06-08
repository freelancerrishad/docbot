<?php session_start() ; ?>
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

    <div id="list1" class="grid md:grid-cols-3 grid-cols-1">
        <div class="md:col-span-2 p-14">
        <form action="doctor.php" method="post" enctype="multipart/form-data">
          
            <h1 class="font-bold md:text-5xl text-2xl">Doctor Entry</h1>
           
            <div class="mt-5">
                <div class="grid md:grid-cols-2 md:gap-6">
                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="disease_name" id="disease_name"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="disease_name"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Disease Name</label>


                    </div>

                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="dr_name" id="dr_name"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="dr_name"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Dr Name</label>


                    </div>

                </div>

                <div class="grid md:grid-cols-2 md:gap-6">
                    <div class="relative z-0 w-full mb-6 group">
                        <input type="email" name="dr_email" id="dr_email"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="dr_email"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Dr Email</label>


                    </div>

                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="phone" id="phone"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="phone"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Dr Phone Number</label>


                    </div>

                </div>

                <div class="grid md:grid-cols-2 md:gap-6">
                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="institute" id="institute"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="institute"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Institute</label>


                    </div>

                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="degree" id="degree"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="degree"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Degree</label>


                    </div>

                </div>

           
                <div class="grid md:grid-cols-2 md:gap-6">
                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="specialized" id="specialized"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                        <label for="specialized"
                            class="peer-focus:font-medium absolute text-sxl text-gray-800 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-gray-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Specialized</label>


                    </div>

                    <div class="relative z-0 w-full mb-6 group">
                        <Label>Picture:</Label><br>
                        <input type="file" name="image" id="image">


                    </div>

                </div>



                
      
                    <div class="relative z-0 w-full mb-6 group">
                        <button class="w-full bg-blue-500 text-white py-3 rounded-xl text-xl font-bold">Entry Doctor</button>

                    </div>

                  

                


            </div>
        </form>

        </div>
        <div class="bg-[url(./images/doctor_bg.png)] bg-no-repeat h-[59em] md:w-3/4 lg:w-full md:bg-contain lg:bg-cover"> 
          <img src='./images/hospital.png' alt="" class="h-[45em] mt-56 ml-14">
        </div>


    </div>

    <!-- tailwind css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.min.js"></script>

</body>

</html>