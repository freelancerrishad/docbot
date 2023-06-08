-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 07:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `username` varchar(1000) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `Disease` varchar(200) NOT NULL,
  `Precaution_1` varchar(200) NOT NULL,
  `Precaution_2` varchar(200) NOT NULL,
  `Precaution_3` varchar(200) NOT NULL,
  `Precaution_4` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `Disease`, `Precaution_1`, `Precaution_2`, `Precaution_3`, `Precaution_4`) VALUES
(1, 'Drug Reaction', 'stop irritation', 'consult nearest hospital', 'stop taking drug', 'follow up'),
(2, 'Malaria', 'Consult nearest hospital', 'avoid oily food', 'avoid non veg food', 'keep mosquitos out'),
(3, 'Allergy', 'apply calamine', 'cover area with bandage', '', 'use ice to compress itching'),
(4, 'Hypothyroidism', 'reduce stress', 'exercise', 'eat healthy', 'get proper sleep'),
(5, 'Psoriasis', 'wash hands with warm soapy water', 'stop bleeding using pressure', 'consult doctor', 'salt baths'),
(6, 'GERD', 'avoid fatty spicy food', 'avoid lying down after eating', 'maintain healthy weight', 'exercise'),
(7, 'Chronic cholestasis', 'cold baths', 'anti itch medicine', 'consult doctor', 'eat healthy'),
(8, 'hepatitis A', 'Consult nearest hospital', 'wash hands through', 'avoid fatty spicy food', 'medication'),
(9, 'Osteoarthristis', 'acetaminophen', 'consult nearest hospital', 'follow up', 'salt baths'),
(10, '(vertigo) Paroymsal  Positional Vertigo', 'lie down', 'avoid sudden change in body', 'avoid abrupt head movment', 'relax'),
(11, 'Hypoglycemia', 'lie down on side', 'check in pulse', 'drink sugary drinks', 'consult doctor'),
(12, 'Acne', 'bath twice', 'avoid fatty spicy food', 'drink plenty of water', 'avoid too many products'),
(13, 'Diabetes ', 'have balanced diet', 'exercise', 'consult doctor', 'follow up'),
(14, 'Impetigo', 'soak affected area in warm water', 'use antibiotics', 'remove scabs with wet compressed cloth', 'consult doctor'),
(15, 'Hypertension ', 'meditation', 'salt baths', 'reduce stress', 'get proper sleep'),
(16, 'Peptic ulcer diseae', 'avoid fatty spicy food', 'consume probiotic food', 'eliminate milk', 'limit alcohol'),
(17, 'Dimorphic hemmorhoids(piles)', 'avoid fatty spicy food', 'consume witch hazel', 'warm bath with epsom salt\r\n', 'consume alovera juice'),
(18, 'Common Cold', 'drink vitamin c rich drinks', 'take vapour', 'avoid cold food', 'keep fever in check'),
(19, 'Chicken pox', 'use neem in bathing ', 'consume neem leaves', 'take vaccine', 'avoid public places'),
(20, 'Cervical spondylosis', 'use heating pad or cold pack', 'exercise', 'take otc pain reliver', 'consult doctor'),
(21, 'Hyperthyroidism', 'eat healthy', 'massage', 'use lemon balm', 'take radioactive iodine treatment'),
(22, 'Urinary tract infection', 'drink plenty of water', 'increase vitamin c intake', 'drink cranberry juice', 'take probiotics'),
(23, 'Varicose veins', 'lie down flat and raise the leg high', 'use oinments', 'use oinments', 'dont stand still for long'),
(24, 'AIDS', 'avoid open cuts', 'wear ppe if possible', 'consult doctor', 'follow up'),
(25, 'Paralysis (brain hemorrhage)', 'massage', 'eat healthy', 'exercise', 'consult doctor'),
(26, 'Typhoid', 'eat high calorie vegitables', 'antiboitic therapy', 'consult doctor', 'medication'),
(27, 'Hepatitis B', 'consult nearest hospital', 'vaccination', 'eat healthy', 'medication'),
(28, 'Fungal infection', 'bath twice', 'use detol or neem in bathing water', 'keep infected area dry', 'use clean cloths'),
(29, 'Hepatitis C', 'Consult nearest hospital', 'vaccination', 'eat healthy', 'medication'),
(30, 'Migraine', 'meditation', 'reduce stress', 'use poloroid glasses in sun', 'consult doctor'),
(31, 'Bronchial Asthma', 'switch to loose cloothing', 'take deep breaths', 'get away from trigger', 'seek help'),
(32, 'Alcoholic hepatitis', 'stop alcohol consumption', 'consult doctor', 'medication', 'follow up'),
(33, 'Jaundice', 'drink plenty of water', 'consume milk thistle', 'eat fruits and high fiberous food', 'medication'),
(34, 'Hepatitis E', 'stop alcohol consumption', 'rest', 'consult doctor', 'medication'),
(35, 'Dengue', 'drink papaya leaf juice', 'avoid fatty spicy food', 'keep mosquitos away', 'keep hydrated'),
(36, 'Hepatitis D', 'consult doctor', 'medication', 'eat healthy', 'follow up'),
(37, 'Heart attack', 'call ambulance', 'chew or swallow asprin', 'keep calm', ''),
(38, 'Pneumonia', 'consult doctor', 'medication', 'rest', 'follow up'),
(39, 'Arthritis', 'exercise', 'use hot and cold therapy', 'try acupuncture', 'massage'),
(40, 'Gastroenteritis', 'stop eating solid food for while', 'try taking small sips of water', 'rest', 'ease back into eating'),
(41, 'Tuberculosis', 'cover mouth', 'consult doctor', 'medication', 'rest');

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
  `img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dr_info`
--

INSERT INTO `dr_info` (`id`, `disease_Name`, `dr_name`, `dr_Email`, `dr_phone`, `institution`, `Degree`, `specialized`, `associate_Hospital`, `img`) VALUES
(1, 'Drug Reaction', 'DR. ARIFUL BASHER', 'advice@bshl.com.bd', '8809666700100', 'Bangladesh Specialized Hospital', 'MBBS,MPH,FCPH', 'Consultant, Internal Medicine,Bangladesh Specializ', 'Bangladesh Specialized Hospital', 'ariful-bashar.jpg'),
(2, 'Drug Reaction', 'PROF. DR. QAMRUZZAMAN CHOWDHURY', 'advice@bshl.com.bd', '8809666700100', 'Bangladesh Specialized Hospital', 'MBBS,FCPS,DMRT', 'Consultant, Oncology & Radiotherapy', 'Bangladesh Specialized Hospital', 'ariful-bashar.jpg'),
(3, 'Malaria', 'Prof. Fazila-Tun-Nesa Malik', 'admin@nhf.org.bd', '58054708-12', 'National Heart Foundation Hospital & Research Inst', 'MBBS,FCPS,FRCP', 'Medicine', 'National Heart Foundation Hospital & Research Inst', 'Qamruzzaman.jpg'),
(4, 'Malaria', 'Prof. Dr. Khan Abul Kalam Azad', 'admin@specialistdoctorsbd.com', '8809613787801', 'Dhaka Medical College & Hospital', 'MBBS,FCPS,FACP', 'MBBS,FCPS,FACP', 'Dhaka Medical College & Hospital', 'Qamruzzaman.jpg'),
(5, 'Allergy', 'Mohammad Mahbub-Ur-Rahman', 'infocls@icddrb.org', '880 -2-9827001', 'ICDDRB International Center for Diarrhoea Disease ', 'MBBS,MPH,DPS', 'Allergist / Immunologist', 'ICDDRB International Center for Diarrhoea Disease ', 'Qamruzzaman.jpg'),
(6, 'Allergy', 'Dr. A.K.M Reja-Ul-Haque', 'contact@bsmmc.edu.bd', '017-15839400', 'BSMMU -Bangabandhu Sheikh Mujib Medical University', 'MBBS,BCS', 'Allergist / Immunologist	', 'BSMMU -Bangabandhu Sheikh Mujib Medical University', 'fazilatunnesa.jpg'),
(7, 'Hypothyroidism', 'Prof. Dr. Md. Hafizur Rahman	', 'hafizur@gmail.com	', '8809613787805	', 'Dhaka Medical College & Hospital	', 'MBBS (DMC), DEM (BIRDEM), MD (Endocrinology), MACE', 'Diabetes, Thyroid & Hormone Diseases Specialist	', 'Dhaka Medical College & Hospital', 'fazilatunnesa.jpg'),
(8, 'Hypothyroidism', 'Prof. Dr. Md. Farid Uddin', 'dr.farid@gmail.com	', '8809613787801', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, DEM, MD (Endocrinology)	', 'Endocrinology (Diabetes, Thyroid & Hormonal Diseas', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'khan-abul-kalam-azad.png'),
(9, 'Psoriasis', 'Prof. Dr. M.N. Huda	', 'mr.huda@outlook.com	', '8801793256600', 'Dhaka Medical College & Hospital	', 'MBBS (DMC), DDV (DU), FCPS (Skin & Sex)	', 'Expert Dermatologist, Sexologist & Venereologist	', 'Dhaka Medical College & Hospital', 'Prof.-Dr.-Md.-Mahbubur-Rahman.jpg'),
(10, 'Psoriasis', 'Dr. Asif Imran Siddiqui	', 'drasif@yahoo.com	', '8801793256600', 'Skinic Dermatology Centre, Mirpur	', 'MBBS (AFMC), DDV (Thailand)	', 'Skin, Allergy, Hair, Nail, Sexual Diseases Special', 'Skinic Dermatology Centre, Mirpur', 'A.K.M-Reja.jpeg'),
(11, 'GERD', 'Prof. Dr. Mamun Al Mahtab Shwapnil	', 'drmamum@ymail.com	', '10606	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MSc (Gastro), MD (Hepatology), FACG (USA), F', 'Hepatologist & Gastroenterologist	', 'Labaid Specialized Hospital, Dhanmondi', 'A.K.M-Reja.jpeg'),
(12, 'GERD	', 'Dr. Salahuddin Mohammed Ali Haider	', 'salau@hotmail.com', '8801797526762', 'Chittagong Medical College & Hospital	', 'Chittagong Medical College & Hospital	', 'Gastroenterology & Liver Diseases Specialist	', 'Gastroenterology & Liver Diseases Specialist	', 'Prof.-Dr.-Md.-Hafizur-Rahman.jpg'),
(13, 'Chronic cholestasis	', 'Prof. Dr. A.K.M Shamsul Kabir	', 'sabur@ymail.com	', '8801740214338	', 'Holy Family Red Crescent Medical College & Hospita', 'MBBS (DU), FCPS (Medicine), MD (Hepatology)	', 'MBBS (DU), FCPS (Medicine), MD (Hepatology)	', 'Labaid Diagnostic, Gulshan', 'prof-dr-m-n-huda.jpg'),
(14, 'Chronic cholestasis	', 'Asst. Prof. Dr. Dulal Chandra Das	', 'dulac@web.bd.com', '8801740214338	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MD (Hepatology)	', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'prof-dr-m-n-huda.jpg'),
(15, 'hepatitis A', 'Dr. Sayedul Haque Jewel	', 'shj@gmail.com', '8801703728601', 'Dhaka Medical College & Hospital	', 'Dhaka Medical College & Hospital	', 'Dhaka Medical College & Hospital	', 'Dhaka Medical College & Hospital	', 'prof-dr-m-n-huda.jpg'),
(16, 'hepatitis A', 'Prof. Dr. Mobin Khan	', 'mk@hotmail.com	', '8801750839384	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MSC (Hepatology), FCPS (BD & PK), FRCP (Glas', 'Liver Diseases & Medicine Specialist	', 'The Liver Center, Dhanmondi', 'prof-dr-m-n-huda.jpg'),
(17, 'Osteoarthristis', 'Asst. Prof. Dr. Habib Imtiaz Ahmed	', 'habib@outlook.com	', '8801701777782	', 'Enam Medical College & Hospital	', 'Enam Medical College & Hospital	', 'Rheumatology (Arthritis, Osteoarthritis, Gout & Pa', 'BRB Hospital, Dhaka', 'Dr.-Asif-Imran-Siddiqui.jpg'),
(18, 'Osteoarthristis', 'Prof. Dr. Syed Atiqul Haq	', 'sahq@hotmail.com	', '8801916267769	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, FCPS (Medicine), FRCP, MD (Rheumatology)	', 'Rheumatology & Medicine Specialist	', 'Green Life Hospital, Dhaka', 'Dr.-Asif-Imran-Siddiqui.jpg'),
(19, '(vertigo) Paroymsal', 'Asso. Prof. Dr. Md. Sahbub Alam	', 'shahbuba@gmail.com	', '8801717250667	', 'Sir Salimullah Medical College & Mitford Hospital	', 'MBBS, FCPS (ENT), MS (ENT)	', 'ENT (Ear, Nose, Throat) Specialist & Head Neck Sur', 'Bangladesh ENT Hospital Ltd', 'Dr.-Asif-Imran-Siddiqui.jpg'),
(20, '(vertigo) Paroymsal', 'Prof. Dr. Md. Hasanuzzaman	', 'hasan@ymail.com	', '8801738413600', 'Chittagong Medical College & Hospital	', 'MBBS, FCPS (Medicine), MD (Neurology)	', 'Brain, Stroke, Nerve, Medicine & Neurology Special', 'Brain, Stroke, Nerve, Medicine & Neurology Special', 'Prof.-Dr.-Mamun-Al-Mahtab-Shwapnil (1).jpg'),
(21, 'cervical spondylosis', 'Dr. Syed Sayed Ahmed	', 'info@uhlbd.com	', '09666-710666	', 'united hospital	', 'MBBS, MD (Neurology)	', 'Neurologist (Brain, Spine, and Muscles)	', 'Dhaka medical college', 'Dr.-Salahuddin-Mohammed-Ali-Haider.jpg'),
(22, 'cervical spondylosis', 'Dr. Amirul Haque	', 'info@bshl.com.bd	', '8809666700100	', 'Bangladesh Specialized Hospital', 'MBBS(DMC),FCPS (BD)	', 'Neurosurgeon (Brain, Spine, Nerves)	', 'Dhaka medical college', 'Dr.-A.K.M-Shamsul-Kabir.jpg'),
(23, 'Hyperthyrodism	', 'Prof. Dr. Md. Hafizur Rahman	', 'info@populardiagnostic	', '8809613787805', 'popular diagonostic center	', 'MD (Endocrinology), MACE (USA)	', 'Thyroid & Hormone Diseases Specialist	', 'Bangladesh Specialized Hospital', 'Asst-Prof-Dr.-Dulal-Chandra-Das.jpg'),
(24, 'Hyperthyrodism', 'Prof. Dr. Md. Farid Uddin	', 'info@populardiagnostic	', '8809613787805	', 'popular diagonostic center	', 'Diabetes, Thyroid & Hormonal Diseases	', 'UROLOGIST & TRANSPLANT SURGEON	', 'Rangpur medical college', 'Dr.-Sayedul-Haque-Jewel.jpg'),
(25, 'urinary tract infection', 'Dr. S A Khan	', 'info@bshl.com.bd	', '8809666700100	', 'Bangladesh Specialized Hospital	', 'MS (Urology),Urologist & Transplant	', 'UROLOGIST & TRANSPLANT SURGEON	', 'Faridpur medical college', 'Dr.-Sayedul-Haque-Jewel.jpg'),
(26, 'urinary tract infection', 'Dr. Shawkat Alam	', 'info@bshl.com.bd	', '8809666700100', 'Bangladesh Specialized Hospital	', 'Bangladesh Specialized Hospital	', 'Professor & Head of Department (Retd.):Skin & Derm', 'Dhaka medical college', 'Prof.-Dr.-Mobin-Khan.jpg'),
(27, 'AIDS	', 'Prof. Dr. Md. Abdul Mannan	', '	info@labaidgroup.com', '1912700967', 'city hospital	', 'Fellow WHO HIV-AIDS(Bangkok)	', 'Professor & Head of Department (Retd.):Skin & Derm', 'Rajshahi medical college', 'Prof.-Dr.-Mobin-Khan.jpg'),
(28, 'AIDS', 'Khan, Dr Md. Sharful Islam	', 'bmcoffic.09@gmail.com	', '	1912700967', 'bangladesh medical college	', 'Head, HIV & AIDS Programme	', 'Lecturer, Department of Physiology & Biochemistry,', 'Faridpur medical college', 'Dr.-Habib-Imtiaz-Ahmed.jpg'),
(29, 'Typhoid', 'DR. ARIFUL BASHER', 'info@bshl.com.bd	', '8809666700100', 'Bangladesh Specialized Hospital	', 'FCPS (Infection & Tropical Diseases)	FCPS (Medicin', 'CONSULTANT, INTERNAL MEDICINE	', 'dhaka medical college', 'Dr.-Habib-Imtiaz-Ahmed.jpg'),
(30, 'Typhoid	', 'Dr. Raihan Rabbani	', 'info@squarehospital.com	', '10616	', 'Bangladesh Specialized Hospital	', 'MBBS, FCPS, US Board Certified in Internal Medicin', 'Senior Consultant, Internal Medicine	', 'chittagong medical college', 'Asso.-Prof.-Dr.-Md.-Sahbub-Alam.jpg'),
(31, 'paralysis(brain hemor)', 'Dr.Moududul Haque	', 'info@labaidgroup.com	', '0176 666 21 11	', 'Lab aid hospital	', 'MBBS,MD,PHD,MS(Neurosurgery)	', 'Faridpur medical college', 'Faridpur medical college', 'Dr.-Habib-Imtiaz-Ahmed.jpg'),
(32, 'Hypoglycemia', 'Prof. Fazila-Tun-Nesa Malik ', 'admin@nhf.org.bd ', '58054708-12 ', 'National Heart Foundation Hospital & Research Inst', 'MBBS,FCPS,FRCP ', 'Medicine ', 'National Heart Foundation Hospital & Research Inst', 'Asso.-Prof.-Dr.-Md.-Sahbub-Alam.jpg'),
(33, 'Hypoglycemia ', 'Prof. Dr. Khan Abul Kalam Azad ', 'admin@specialistdoctorsbd.com ', '8809613787801 ', 'Dhaka Medical College & Hospital ', 'MBBS,FCPS,FACP ', 'Medicine ', 'Dhaka Medical College & Hospital', 'Prof.-Dr.-Md.-Hassanuzzaman.jpg'),
(34, 'Acne ', 'Dr. Asif Imran Siddiqui ', 'drasif@yahoo.com ', '8801793256600 ', 'Skinic Dermatology Centre, Mirpur ', 'MBBS (AFMC), DDV (Thailand) ', 'Skin, Allergy, Hair, Nail, Sexual Diseases Special', 'Skinic Dermatology Centre, Mirpur', 'Prof.-Dr.-Md.-Hassanuzzaman.jpg'),
(35, 'Acne ', 'Prof. Dr. M.N. Huda ', 'mr.huda@outlook.com ', 'mr.huda@outlook.com ', 'mr.huda@outlook.com ', 'MBBS (DMC), DDV (DU), FCPS (Skin & Sex) ', 'Expert Dermatologist, Sexologist & Venereologist', 'Dhaka Medical College & Hospital', 'Prof.-Dr.-Syed-Atiqul-Haq.jpg'),
(36, 'Diabetes ', 'Prof. Dr. Md. Farid Uddin ', 'dr.farid@gmail.com ', '8809613787801 ', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, DEM, MD (Endocrinology) ', 'Endocrinology (Diabetes, Thyroid & Hormonal Diseas', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'Prof.-Dr.-Syed-Atiqul-Haq.jpg'),
(37, 'Diabetes ', 'Prof. Dr. Md. Hafizur Rahman ', 'hafizur@gmail.com ', '8809613787805', 'Dhaka Medical College & Hospital ', 'MBBS (DMC), DEM (BIRDEM), MD (Endocrinology), MACE', 'Diabetes, Thyroid & Hormone Diseases Specialist', 'Dhaka Medical College & Hospital', 'Prof.-Dr.-Syed-Atiqul-Haq.jpg'),
(38, 'Impetigo', 'Dr. Asif Imran Siddiqui ', 'drasif@yahoo.com ', '8801793256600 ', 'Skinic Dermatology Centre, Mirpur ', 'MBBS (AFMC), DDV (Thailand) ', 'Skinic Dermatology Centre, Mirpur', 'Skinic Dermatology Centre, Mirpur', ''),
(39, 'Impetigo ', 'Prof. Dr. M.N. Huda ', 'mr.huda@outlook.com ', '8801793256600 ', 'Dhaka Medical College & Hospital ', 'MBBS (DMC), DDV (DU), FCPS (Skin & Sex) ', 'Expert Dermatologist, Sexologist & Venereologist', 'Dhaka Medical College & Hospital', ''),
(40, 'Hypertension ', 'Prof. Fazila-Tun-Nesa Malik ', 'admin@nhf.org.bd ', '58054708-12 ', 'National Heart Foundation Hospital & Research Inst', 'MBBS,FCPS,FRCP ', 'Medicine ', 'National Heart Foundation Hospital & Research Inst', ''),
(41, 'Hypertension ', 'Prof. Dr. Khan Abul Kalam Azad ', 'admin@specialistdoctorsbd.com ', '8809613787801 ', 'Dhaka Medical College & Hospital ', 'MBBS,FCPS,FACP ', 'Medicine ', 'Dhaka Medical College & Hospital', ''),
(42, 'Peptic ulcer diseae ', 'Prof. Dr. A.K.M Shamsul Kabir ', 'sabur@ymail.com ', '8801740214338 ', 'Holy Family Red Crescent Medical College & Hospita', 'MBBS (DU), FCPS (Medicine), MD (Hepatology)', 'Liver Diseases & Medicine Specialist ', 'Labaid Diagnostic, Gulshan', ''),
(43, 'Peptic ulcer diseae ', 'Asst. Prof. Dr. Dulal Chandra Das ', 'dulac@web.bd.com ', '8801740214338 ', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MD (Hepatology) ', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'Popular Diagnostic Center, Uttara', ''),
(44, 'Dimorphic hemorrhoids(piles) ', 'Dimorphic hemorrhoids(piles) ', 'sabur@ymail.com ', 'sabur@ymail.com ', 'Holy Family Red Crescent Medical College & Hospita', 'MBBS (DU), FCPS (Medicine), MD (Hepatology)', 'Liver Diseases & Medicine Specialist ', 'Labaid Diagnostic, Gulshan', ''),
(45, 'Dimorphic hemorrhoids(piles) ', 'Asst. Prof. Dr. Dulal Chandra Das ', 'dulac@web.bd.com ', '8801740214338 ', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'Popular Diagnostic Center, Uttara ', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'MBBS, MD (Hepatology)', ''),
(46, 'Common cold ', 'DR. ARIFUL BASHER ', 'advice@bshl.com.bd ', '8809666700100 ', 'Bangladesh Specialized Hospital ', 'Bangladesh Specialized Hospital ', 'MBBS,MPH,FCPH ', 'Bangladesh Specialized Hospital', ''),
(47, 'Common cold ', 'mk@hotmail.com ', 'mk@hotmail.com ', '8801750839384', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MSC (Hepatology), FCPS (BD & PK), FRCP (Glas', 'Liver Diseases & Medicine Specialist ', 'The Liver Center, Dhanmondi', ''),
(48, 'Chicken pox ', 'Mohammad Mahbub-Ur-Rahman ', 'infocls@icddrb.org ', '880 -2-9827001 ', 'ICDDRB International Center for Diarrhoea Disease ', 'MBBS,MPH,DPS ', 'Allergist / Immunologist ', 'ICDDRB International Center for Diarrhoea Disease ', ''),
(49, 'Chicken pox ', 'Dr. A.K.M Reja-Ul-Haque ', 'contact@bsmmc.edu.bd ', '017-15839400 ', 'BSMMU -Bangabandhu Sheikh Mujib Medical University', 'MBBS,BCS ', 'Allergist / Immunologist ', 'BSMMU -Bangabandhu Sheikh Mujib Medical University', ''),
(50, 'paralysis(brain hemor ', 'Dr. saumitra sarkar ', 'info@populardiagnostic.com ', '8809613787805 ', 'popular diagonostic center ', 'MBBS,Mrcs,MS(Neurosurgery ', 'Neurosurgery spacialist ', 'Dhaka medical college', ''),
(51, 'Hepatitis B ', 'Dr.Mahbub H Khan ', 'info@medinovamedicalbd.com', '01750 557722 ', 'Medinova Medical Services ', 'MBBS, MD (Hepatology) ', 'liver and Gastroenterology specalist ', 'Faridpur medical college', ''),
(52, 'Hepatitis B ', 'Asst. Prof. Dr. Dulal Chandra Das ', '@bsmmu.edu.bd ', '801740214338 ', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MD (Hepatology) ', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'Dhaka medical college', ''),
(53, 'Fungal infection ', 'Associate Prof. Dr. Lubna Khondaker ', 'info@labaidgroup.com ', '01726-6662888 ', 'Lab aid hospital ', 'MCPS, and FCPS ((Dermatology and Venereology)', 'specializes in sexually transmitted diseases, alle', 'Dhaka medical college', ''),
(54, 'Fungal infection ', 'Prof. Dr. Hasibur Rahman', 'info@evercare.com ', '8431661-5 ', 'evercare hospital ', 'MBBS, FCPS (Dermatology & VD) ', 'Head of the Department of Dermatology and Venereol', 'Dhaka medical college', ''),
(55, 'Hepatitis c ', 'Hepatitis c ', 'info@medinovamedicalbd.com ', '01750 557722 ', 'Medinova Medical Services ', 'MBBS, MD (Hepatology) ', 'MBBS, MD (Hepatology) ', 'Dhaka medical college', ''),
(56, 'Hepatitis c ', 'Asst. Prof. Dr. Dulal Chandra Das ', '@bsmmu.edu.bd ', '801740214338 ', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MD (Hepatology) ', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'Dhaka medical college', ''),
(57, 'Migraine ', 'Prof. Dr. Md. Badrul Alam ', 'nins@hospi.dghs.gov.bd ', '88029660015 ', 'National Institute of Neurosciences & Hospital', 'MBBS, MD (Neurology), FACP (USA), FRCP (Glasgow)', 'Neurology (Brain, Stroke, Nerve & Migraine) & Medi', 'Dhaka medical college', ''),
(58, 'Migraine ', 'Dr. Snigdha Sarker (Chini)', 'info@iinfo@imchbd.com ', '8801910020092 ', 'International Medical College & Hospital, Gazipur', 'MBBS, MD (Neurology) ', 'Neurology (Brain, Stroke, Nerve, Headache, Migrain', 'Dhaka medical college', ''),
(59, 'Bronchial Asthma ', 'Prof. Dr. M. Delwar Hossain', 'info@populardiagnostic.com ', '8809613787801 ', 'Birdem General Hospital & Ibrahim Medical College', 'MBBS, MD (USA), MD (Chest Diseases) ', 'Asthma, Chest Diseases & Respiratory Medicine Spec', 'Dhaka medical college', ''),
(60, 'Bronchial Asthma ', 'Prof. Dr. Md. Abdur Rouf', 'info@medinovamedicalbd.com ', '8801750557722 ', 'National Institute of Diseases of the Chest & Hosp', 'MBBS, MD (CHEST), FCCP (USA) ', 'Chest Diseases, Asthma & Medicine Specialist ', 'Dhaka medical college', ''),
(61, 'Alcoholic hepatitis', 'Dr.MD.Masudur Rahman', 'nins@hospi.dghs.gov.bd ', '88029660015 ', 'Sheikh Russel Gastro Liver Institute & Hospital', 'MD (Gastroenterology) ', 'SPECIALIST IN MEDICINE, LIVER & GASTROENTEROLOGY, ', 'Dhaka medical college', ''),
(62, 'Alcoholic hepatitis', 'DR. SHAWKAT HOSSAIN (ROMEL) ', 'info@populardiagnostic.com ', '8801910020092 ', 'Mitford Hospital in Dhaka, Bangladesh. ', 'MBBS, MD (Hepatology) ', 'Hepatologist and gastrointestinal disease speciali', 'Dhaka medical college', ''),
(63, 'Hepatitis E ', 'Dr.Mahbub H Khan ', 'info@medinovamedicalbd.com ', '01750 557722 ', 'Medinova Medical Services ', 'MBBS, MD (Hepatology) ', 'liver and Gastroenterology specalist ', 'Dhaka medical college', ''),
(64, 'Hepatitis E ', 'Asst. Prof. Dr. Dulal Chandra Das ', 'info@medinovamedicalbd.com ', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MD (Hepatology) ', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'Dhaka medical college', ''),
(65, 'Dengue ', 'Asst. Prof. Dr. Dulal Chandra Das ', 'info@medinovamedicalbd.com ', '10616 ', 'Square Hospitals ', 'MBBS, FCPS, US Board Certified in Internal Medicin', 'MBBS, FCPS, US Board Certified in Internal Medicin', 'Dhaka medical college', ''),
(66, 'Dengue ', 'Dr.Ariful Basher ', 'info@bshl.com.bd ', 'Bangladesh Specialized Hospital ', 'Bangladesh Specialized Hospital ', 'FCPS (Medicine),FCPS (Infection & Tropical Disease', 'CONSULTANT, INTERNAL MEDICINE, BANGLADESH SPECIALI', 'Dhaka medical college', ''),
(67, 'Hepatitis D	', 'Dr.Mahbub H Khan	', 'info@medinovamedicalbd.com	', '01750 557722	', 'Medinova Medical Services	', 'MBBS, MD (Hepatology)	', 'liver and Gastroenterology specalist	', 'Dhaka medical college', ''),
(68, 'Hepatitis D	', 'Asst. Prof. Dr. Dulal Chandra Das	', 'info@medinovamedicalbd.com	', '01750 557722	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MD (Hepatology)	', 'Liver, Gallbladder, Biliary, Pancreas & Gastroente', 'Dhaka medical college', ''),
(69, 'Heart Attack	', 'Prof. Dr. Ashok Kumar Dutta', 'info@populardiagnostic.com	', '8801910020092	', 'National Heart Foundation Hospital & Research Inst', 'MBBS, FCPS (Medicine), MD (Cardiology), FACC (USA)', 'Cardiology & Medicine Specialist	', 'Dhaka medical college', ''),
(70, 'Heart Attack	', 'Dr. Md. Yeanur Hossain', 'info@populardiagnostic.com	', '8801910020092	', 'Dhaka Medical College & Hospita	', 'MBBS, BCS (Health), FCPS (Medicine), MD (Cardiolog', 'Cardiology, Diabetes & Medicine Specialist', 'Dhaka medical college', ''),
(71, 'Arthritis	', 'Asst. Prof. Dr. Habib Imtiaz Ahmed', 'info@bshl.com.bd	', '01750 557722	', 'Enam Medical College & Hospital	', 'MBBS (DU), MRCP (UK), MD (Rheumatology)', 'Rheumatology (Arthritis, Osteoarthritis, Gout & Pa', 'Dhaka medical college', ''),
(72, 'Arthritis	', 'Prof. Dr. Md. Golam Kibria Khan', 'info@bshl.com.bd	', '01750 557722	', 'Dhaka Medical College & Hospital	', 'MBBS, FCPS (Medicine), MACP (USA), FACP (USA) , Fe', 'Rheumatology, Arthritis & Medicine Specialist	', 'Dhaka medical college', ''),
(73, 'Tuberculosis', 'Dr. Samprity Islam	', 'info@squarehospital.com	', '01750 557722	', 'Bangabandhu Sheikh Mujib Medical University Hospit', 'MBBS, MCPS (Medicine), MD (Chest Diseases)', 'Chest Diseases, Asthma, TB, COPD & Respiratory Med', 'Dhaka medical college', ''),
(74, 'Tuberculosis	', 'Dr. Naeem Hossain', 'info@squarehospital.com	', '8801910020092	', 'Enam Medical College & Hospita	', 'MBBS , MD (Pulmonology)	', 'Chest Diseases (Asthma, TB, Allergy & Pneumonia) S', 'Dhaka medical college', '');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `disease` varchar(100) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `date`, `disease`, `id_user`) VALUES
(1, 'Sunday, June 4, 2023', 'Urinary tract infection\n', 1),
(2, 'Sunday, June 4, 2023', 'Acne\n', 1),
(3, 'Sunday, June 4, 2023', 'Urinary tract infection\n', 1),
(4, 'Monday, June 5, 2023', 'Paralysis (brain hemorrhage)\n', 1),
(5, 'Monday, June 5, 2023', 'Impetigo\n', 1),
(6, 'Monday, June 5, 2023', 'Fungal infection\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `contact_num` varchar(1000) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `verify` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `contact_num`, `location`, `email`, `password`, `verify`) VALUES
(1, 'United Hospital', '09666710666', 'Badda, Dhaka', 'hospital@gmail.com', '1234', '1');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `report` mediumtext DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `name`, `report`, `user_id`) VALUES
(1, 'Rishad', 'I face this problem', 1);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `dateOfBirth` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstName`, `lastName`, `dateOfBirth`, `gender`, `email`, `pass`, `image`) VALUES
(1, 'Rishad', 'Islam', '24/5/2000', 'male', 'wdr@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'IMG-647824c019c921.37175683.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dr_info`
--
ALTER TABLE `dr_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `dr_info`
--
ALTER TABLE `dr_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
