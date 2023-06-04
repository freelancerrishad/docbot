-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 03:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `dr_info`
--

CREATE TABLE `dr_info` (
  `id` int(11) NOT NULL,
  `disease_Name` varchar(50) NOT NULL,
  `dr_name` varchar(50) NOT NULL,
  `dr_Email` varchar(50) NOT NULL,
  `dr_phone` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `Degree` varchar(50) NOT NULL,
  `specialized` varchar(50) NOT NULL,
  `associate_Hospital` varchar(50) NOT NULL,
  `img` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dr_info`
--

INSERT INTO `dr_info` (`id`, `disease_Name`, `dr_name`, `dr_Email`, `dr_phone`, `institution`, `Degree`, `specialized`, `associate_Hospital`, `img`) VALUES
(1, 'Drug Reaction', 'DR. ARIFUL BASHER', 'advice@bshl.com.bd', '8809666700100', 'Bangladesh Specialized Hospital', 'MBBS,MPH,FCPH', 'Consultant, Internal Medicine,Bangladesh Specializ', 'Bangladesh Specialized Hospital', 'ariful-bashar.jpg'),
(2, 'Drug Reaction', 'PROF. DR. QAMRUZZAMAN CHOWDHURY', 'advice@bshl.com.bd', '8809666700100', 'Bangladesh Specialized Hospital', 'MBBS,FCPS,DMRT', 'Consultant, Oncology & Radiotherapy', 'Bangladesh Specialized Hospital', 'Qamruzzaman.jpg'),
(3, 'Malaria', 'Prof. Fazila-Tun-Nesa Malik', 'admin@nhf.org.bd', '58054708-12', 'National Heart Foundation Hospital & Research Inst', 'MBBS,FCPS,FRCP', 'Medicine', 'National Heart Foundation Hospital & Research Inst', 'fazilatunnesa.jpg'),
(4, 'Malaria', 'Prof. Dr. Khan Abul Kalam Azad', 'admin@specialistdoctorsbd.com', '8809613787801', 'Dhaka Medical College & Hospital', 'MBBS,FCPS,FACP', 'MBBS,FCPS,FACP', 'Dhaka Medical College & Hospital', 'khan-abul-kalam-azad.png'),
(5, 'Allergy', 'Mohammad Mahbub-Ur-Rahman', 'infocls@icddrb.org', '880 -2-9827001', 'ICDDRB International Center for Diarrhoea Disease ', 'MBBS,MPH,DPS', 'Allergist / Immunologist', 'ICDDRB International Center for Diarrhoea Disease ', 'Prof.-Dr.-Md.-Mahbubur-Rahman.jpg'),
(6, 'Allergy', 'Dr. A.K.M Reja-Ul-Haque', 'contact@bsmmc.edu.bd', '017-15839400', 'BSMMU -Bangabandhu Sheikh Mujib Medical University', 'MBBS,BCS', 'Allergist / Immunologist	', 'BSMMU -Bangabandhu Sheikh Mujib Medical University', 'A.K.M-Reja.jpeg'),
(7, 'Hypothyroidism', 'Prof. Dr. Md. Hafizur Rahman	', 'hafizur@gmail.com	', '8809613787805	', 'Dhaka Medical College & Hospital	', 'MBBS (DMC), DEM (BIRDEM), MD (Endocrinology), MACE', 'Diabetes, Thyroid & Hormone Diseases Specialist	', 'Dhaka Medical College & Hospital', 'Prof.-Dr.-Md.-Hafizur-Rahman.jpg'),
(8, 'Hypothyroidism', 'Prof. Dr. Md. Farid Uddin', 'dr.farid@gmail.com	', '8809613787801', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, DEM, MD (Endocrinology)	', 'Endocrinology (Diabetes, Thyroid & Hormonal Diseas', 'Bangabandhu Sheikh Mujib Medical University Hospit', ''),
(9, 'Psoriasis', 'Prof. Dr. M.N. Huda	', 'mr.huda@outlook.com	', '8801793256600', 'Dhaka Medical College & Hospital	', 'MBBS (DMC), DDV (DU), FCPS (Skin & Sex)	', 'Expert Dermatologist, Sexologist & Venereologist	', 'Dhaka Medical College & Hospital', 'prof-dr-m-n-huda.jpg'),
(10, 'Psoriasis', 'Dr. Asif Imran Siddiqui	', 'drasif@yahoo.com	', '8801793256600', 'Skinic Dermatology Centre, Mirpur	', 'MBBS (AFMC), DDV (Thailand)	', 'Skin, Allergy, Hair, Nail, Sexual Diseases Special', 'Skinic Dermatology Centre, Mirpur', 'Dr.-Asif-Imran-Siddiqui.jpg'),
(11, 'GERD', 'Prof. Dr. Mamun Al Mahtab Shwapnil	', 'drmamum@ymail.com	', '10606	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MSc (Gastro), MD (Hepatology), FACG (USA), F', 'Hepatologist & Gastroenterologist	', 'Labaid Specialized Hospital, Dhanmondi', 'Prof.-Dr.-Mamun-Al-Mahtab-Shwapnil (1).jpg'),
(12, 'GERD	', 'Dr. Salahuddin Mohammed Ali Haider	', 'salau@hotmail.com', '8801797526762', 'Chittagong Medical College & Hospital	', 'Chittagong Medical College & Hospital	', 'Gastroenterology & Liver Diseases Specialist	', 'Gastroenterology & Liver Diseases Specialist	', 'Dr.-Salahuddin-Mohammed-Ali-Haider.jpg'),
(13, 'Chronic cholestasis	', 'Prof. Dr. A.K.M Shamsul Kabir	', 'sabur@ymail.com	', '8801740214338	', 'Holy Family Red Crescent Medical College & Hospita', 'MBBS (DU), FCPS (Medicine), MD (Hepatology)	', 'MBBS (DU), FCPS (Medicine), MD (Hepatology)	', 'Labaid Diagnostic, Gulshan', 'Dr.-A.K.M-Shamsul-Kabir.jpg'),
(14, 'Chronic cholestasis	', 'Asst. Prof. Dr. Dulal Chandra Das	', 'dulac@web.bd.com', '8801740214338	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MD (Hepatology)	', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'Asst-Prof-Dr.-Dulal-Chandra-Das.jpg'),
(15, 'hepatitis A', 'Dr. Sayedul Haque Jewel	', 'shj@gmail.com', '8801703728601', 'Dhaka Medical College & Hospital	', 'Dhaka Medical College & Hospital	', 'Dhaka Medical College & Hospital	', 'Dhaka Medical College & Hospital	', 'Dr.-Sayedul-Haque-Jewel.jpg'),
(16, 'hepatitis A', 'Prof. Dr. Mobin Khan	', 'mk@hotmail.com	', '8801750839384	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MSC (Hepatology), FCPS (BD & PK), FRCP (Glas', 'Liver Diseases & Medicine Specialist	', 'The Liver Center, Dhanmondi', 'Prof.-Dr.-Mobin-Khan.jpg'),
(17, 'Osteoarthristis', 'Asst. Prof. Dr. Habib Imtiaz Ahmed	', 'habib@outlook.com	', '8801701777782	', 'Enam Medical College & Hospital	', 'Enam Medical College & Hospital	', 'Rheumatology (Arthritis, Osteoarthritis, Gout & Pa', 'BRB Hospital, Dhaka', 'Dr.-Habib-Imtiaz-Ahmed.jpg'),
(18, 'Osteoarthristis', 'Prof. Dr. Syed Atiqul Haq	', 'sahq@hotmail.com	', '8801916267769	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, FCPS (Medicine), FRCP, MD (Rheumatology)	', 'Rheumatology & Medicine Specialist	', 'Green Life Hospital, Dhaka', ''),
(19, '(vertigo) Paroymsal', 'Asso. Prof. Dr. Md. Sahbub Alam	', 'shahbuba@gmail.com	', '8801717250667	', 'Sir Salimullah Medical College & Mitford Hospital	', 'MBBS, FCPS (ENT), MS (ENT)	', 'ENT (Ear, Nose, Throat) Specialist & Head Neck Sur', 'Bangladesh ENT Hospital Ltd', 'Asso.-Prof.-Dr.-Md.-Sahbub-Alam.jpg'),
(20, '(vertigo) Paroymsal', 'Prof. Dr. Md. Hasanuzzaman	', 'hasan@ymail.com	', '8801738413600', 'Chittagong Medical College & Hospital	', 'MBBS, FCPS (Medicine), MD (Neurology)	', 'Brain, Stroke, Nerve, Medicine & Neurology Special', 'Brain, Stroke, Nerve, Medicine & Neurology Special', 'Prof.-Dr.-Md.-Hassanuzzaman.jpg'),
(21, 'cervical spondylosis', 'Dr. Syed Sayed Ahmed	', 'info@uhlbd.com	', '09666-710666	', 'united hospital	', 'MBBS, MD (Neurology)	', 'Neurologist (Brain, Spine, and Muscles)	', '', 'Prof.-Dr.-Syed-Atiqul-Haq.jpg'),
(22, 'cervical spondylosis', 'Dr. Amirul Haque	', 'info@bshl.com.bd	', '8809666700100	', 'Bangladesh Specialized Hospital', 'MBBS(DMC),FCPS (BD)	', 'Neurosurgeon (Brain, Spine, Nerves)	', '', ''),
(23, 'Hyperthyrodism	', 'Prof. Dr. Md. Hafizur Rahman	', 'info@populardiagnostic	', '8809613787805', 'popular diagonostic center	', 'MD (Endocrinology), MACE (USA)	', 'Thyroid & Hormone Diseases Specialist	', '', ''),
(24, 'Hyperthyrodism', 'Prof. Dr. Md. Farid Uddin	', 'info@populardiagnostic	', '8809613787805	', 'popular diagonostic center	', 'Diabetes, Thyroid & Hormonal Diseases	', 'UROLOGIST & TRANSPLANT SURGEON	', 'Prof.-Dr.-Md.-Farid-Uddin.jpg', ''),
(25, 'urinary tract infection', 'Dr. S A Khan	', 'info@bshl.com.bd	', '8809666700100	', 'Bangladesh Specialized Hospital	', 'MS (Urology),Urologist & Transplant	', 'UROLOGIST & TRANSPLANT SURGEON	', '', ''),
(26, 'urinary tract infection', 'Dr. Shawkat Alam	', 'info@bshl.com.bd	', '8809666700100', 'Bangladesh Specialized Hospital	', 'Bangladesh Specialized Hospital	', 'Professor & Head of Department (Retd.):Skin & Derm', '', ''),
(27, 'AIDS	', 'Prof. Dr. Md. Abdul Mannan	', '', '1912700967', 'city hospital	', 'Fellow WHO HIV-AIDS(Bangkok)	', 'Professor & Head of Department (Retd.):Skin & Derm', '', ''),
(28, 'AIDS', 'Khan, Dr Md. Sharful Islam	', 'bmcoffic.09@gmail.com	', '', 'bangladesh medical college	', 'Head, HIV & AIDS Programme	', 'Lecturer, Department of Physiology & Biochemistry,', '', ''),
(29, 'Typhoid', 'DR. ARIFUL BASHER', 'info@bshl.com.bd	', '8809666700100', 'Bangladesh Specialized Hospital	', 'FCPS (Infection & Tropical Diseases)	FCPS (Medicin', 'CONSULTANT, INTERNAL MEDICINE	', '', ''),
(30, 'Typhoid	', 'Dr. Raihan Rabbani	', 'info@squarehospital.com	', '10616	', 'Bangladesh Specialized Hospital	', 'MBBS, FCPS, US Board Certified in Internal Medicin', 'Senior Consultant, Internal Medicine	', '', ''),
(31, 'paralysis(brain hemor)', 'Dr.Moududul Haque	', 'info@labaidgroup.com	', '0176 666 21 11	', 'Lab aid hospital	', 'MBBS,MD,PHD,MS(Neurosurgery)	', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dr_info`
--
ALTER TABLE `dr_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dr_info`
--
ALTER TABLE `dr_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
