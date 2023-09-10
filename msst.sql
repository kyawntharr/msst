-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 04:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msst`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `users_id`, `account_type_id`) VALUES
(19, 10, 1),
(20, 7, 2),
(21, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`id`, `title`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `box`
--

CREATE TABLE `box` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `box`
--

INSERT INTO `box` (`id`, `name`) VALUES
(1, 'Miracle'),
(2, 'Z3X'),
(3, 'JPG'),
(4, 'MRT'),
(8, 'He He He');

-- --------------------------------------------------------

--
-- Table structure for table `box_list`
--

CREATE TABLE `box_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `download_link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `box_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `box_list`
--

INSERT INTO `box_list` (`id`, `name`, `download_link`, `image`, `box_id`, `post`, `created_at`) VALUES
(3, 'Miracle Thunder Edition v3.43', 'https://drive.google.com/file/d/17ApWgCYNA5jVyNANOGtlEKTfOYp_OOft/view', '1692282521_miracle.PNG', 1, '<h3>How it work ?</h3><p>All of My GSM Friends, We’ll walk you through the process of downloading and installing the most recent version of Miracle Thunder Edition v3.43 on your computer in this guide. Miracle Box is a one-click repair tool for Chinese Android smartphones and tablets. Android smartphones are supported by Xiaomi, Huawei, Oppo, Vivo, Meizu, and Meitu. It can update Firmware and erase Pattern/Password/Pin/FRP from many. Our team carefully examined and installed the program before posting it, and it is a fully functional version with no issues.</p><h3>Bypass the FRP on your Gmail account:</h3><p>Your Gmail account will be required to log in if you format your device. Google has incorporated the Factory Reset Protection function. But what if you cannot check in to your Google account for whatever reason you may be experiencing? Fortunately, under certain circumstances, you may make use of the Miracle Box Setup Tool to bypass the FRP Gmail login from the device once again.</p>', '2023-08-17 13:46:58'),
(4, 'Miracle Thunder Edition v3.39 Official Setup File', 'https://drive.google.com/file/d/1oh50yapsTv5emcF_cSshXEGnlbZvWE2y/view', '1692280129_miracle.PNG', 1, '<h3>How use ?</h3><p>All of My GSM Friends, We’ll walk you through the process of downloading and installing the most recent version of Miracle Thunder Edition v3.43 on your computer in this guide. Miracle Box is a one-click repair tool for Chinese Android smartphones and tablets. Android smartphones are supported by Xiaomi, Huawei, Oppo, Vivo, Meizu, and Meitu. It can update Firmware and erase Pattern/Password/Pin/FRP from many. Our team carefully examined and installed the program before posting it, and it is a fully functional version with no issues.</p><p><br></p><h3>Bypass the FRP on your Gmail account:</h3><p>Your Gmail account will be required to log in if you format your device. Google has incorporated the Factory Reset Protection function. But what if you cannot check in to your Google account for whatever reason you may be experiencing? Fortunately, under certain circumstances, you may make use of the Miracle Box Setup Tool to bypass the FRP Gmail login from the device once again.</p>', '2023-08-17 13:48:49'),
(6, 'Z3x Samsung Tool PRO v45.13', 'https://drive.google.com/file/d/1bJr7dTcNQhDwytQK7s-bBaqMoO3-qrew/view', '1692280469_Z3x-Samsung-Tool.jpg', 2, '<h4>Z3x Samsung Tool PRO</h4><p style=\"margin-left: 25px;\">We’ve gathered the official correct c Setup File (Windows 64 and 86 bit) for Flashing, Unlocking, and Repairing your Samsung smartphone on this website. You may quickly get the latest version of the Z3x Box Samsung Tool Pro v45.13. This tool will assist you in resetting factory reset protection (FRP), fixing the IMEI issue, the baseband, and unlocking the network.</p><p><br></p><h4>Flashing</h4><p style=\"margin-left: 25px;\">Updates software and, in particular, Write firmware repairs and upgrades. These functions are the most frequently used to downgrade to outdated firmware versions or update newer ones. responds to firmware access to your smartphone</p><p><br></p><h4>Read/Write EFS</h4><p style=\"margin-left: 25px;\">The EFS partition is a specific partition dedicated only to a phone’s information such as the radio signal, IMEI, and many other file kinds surrounding the device’s SIM card and other services such as Wi-Fi and Bluetooth. All the radio devices that use your phone run things in an encrypted fashion at the file system level, like MAC addresses.</p>', '2023-08-17 13:54:29'),
(8, 'Z3x Samsung Tool PRO v44.17', 'https://androidfilehost.com/?fid=14871746926876842899', '1692280810_Z3x-Samsung-Tool.jpg', 2, '<h4>Z3x Samsung Tool PRO</h4><p style=\"margin-left: 25px;\">We’ve gathered the official correct c Setup File (Windows 64 and 86 bit) for Flashing, Unlocking, and Repairing your Samsung smartphone on this website. You may quickly get the latest version of the Z3x Box Samsung Tool Pro v45.13. This tool will assist you in resetting factory reset protection (FRP), fixing the IMEI issue, the baseband, and unlocking the network.</p><p><br></p><h4>Flashing</h4><p style=\"margin-left: 25px;\">Updates software and, in particular, Write firmware repairs and upgrades. These functions are the most frequently used to downgrade to outdated firmware versions or update newer ones. responds to firmware access to your smartphone</p><p style=\"margin-left: 25px;\"><br></p><h4>Read/Write EFS</h4><p style=\"margin-left: 25px;\">The EFS partition is a specific partition dedicated only to a phone’s information such as the radio signal, IMEI, and many other file kinds surrounding the device’s SIM card and other services such as Wi-Fi and Bluetooth. All the radio devices that use your phone run things in an encrypted fashion at the file system level, like MAC addresses.</p>', '2023-08-17 14:00:10'),
(9, 'Z3x Samsung Tool PRO v45.0', 'https://drive.google.com/file/d/1hlpLONjqprUYTl0X4klDTSzmcWZaq69b/view', '1692280894_Z3x-Samsung-Tool.jpg', 2, '<h4>Z3x Samsung Tool PRO</h4><p style=\"margin-left: 25px;\">We’ve gathered the official correct c Setup File (Windows 64 and 86 bit) for Flashing, Unlocking, and Repairing your Samsung smartphone on this website. You may quickly get the latest version of the Z3x Box Samsung Tool Pro v45.13. This tool will assist you in resetting factory reset protection (FRP), fixing the IMEI issue, the baseband, and unlocking the network.</p><p style=\"margin-left: 25px;\"><br></p><h4>Flashing</h4><p style=\"margin-left: 25px;\">Updates software and, in particular, Write firmware repairs and upgrades. These functions are the most frequently used to downgrade to outdated firmware versions or update newer ones. responds to firmware access to your smartphone</p><p style=\"margin-left: 25px;\"><br></p><h4>Read/Write EFS</h4><p style=\"margin-left: 25px;\">The EFS partition is a specific partition dedicated only to a phone’s information such as the radio signal, IMEI, and many other file kinds surrounding the device’s SIM card and other services such as Wi-Fi and Bluetooth. All the radio devices that use your phone run things in an encrypted fashion at the file system level, like MAC addresses.</p>', '2023-08-17 14:01:34'),
(10, 'MRT Key/Dongle Setup V5.52', 'https://androidfilehost.com/?fid=14655340768118468709', '1692281093_mrt-3.199.jpg', 4, '<h4>What is MRT Dongle?</h4><p style=\"margin-left: 25px;\">MRT Key Dongle is a device designed by the Mobile Fix Team that enables users to fix an extensive range of Chinese-made smart and feature phones and tablets rapidly and efficiently. MRT Tool supports the repair and unlocking of Android devices in any mode, including Meta, EDL, Download, ADB, and Fastboot. The team is constantly updating the application with new “world-first repairing” features to make it better. They have just released their newest MRT V5.52 version to the public.</p>', '2023-08-17 14:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'Huawei'),
(3, 'Xiaomi'),
(4, 'OPPO'),
(6, 'VIVO'),
(17, 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_info`
--

CREATE TABLE `buyer_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `packages_id` int(11) NOT NULL,
  `tutorials_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `youtube` varchar(225) NOT NULL,
  `facebook` varchar(225) NOT NULL,
  `twitter` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `email`, `phone_number`, `youtube`, `facebook`, `twitter`) VALUES
(1, '26corner - 38st x 39st, Chanmyatharsi, Mandalay', 'msstinfo@gmail.com', 940005000, 'https://www.youtube.com/', 'https://www.facebook.com/', 'https://twitter.com/');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) NOT NULL,
  `title` varchar(225) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `content`) VALUES
(1, 'Mi Account Official Lock ျဖည္ျခင္း', 'ပထမဦးဆုံး Mi Account ကျနေတဲ့ ဖုန်းထဲက Model , Internal Memory , IMEI , Colour , \ncustomer service unlock number စတာတွေ လိုအပ်ပါသည်။ ဒါတွေက ဘာလို လို့အပ်လဲ ဆိုရင်တော့ သူ့ဘက်က မေးရင် ဖြေနိုင်အောင်လို့ပါ။ အဓိက အရေးကြီးတာကတော့ customer service unlock number ပါဘဲ။ ဒါလေး ရှိမှဘဲ မိမိရဲ့ဖုန်းက official Mi Account Lock ပြုတ်မှာ ဖြစ်ပါသည်။'),
(2, 'Network Lock ျဖည္ျခင္း', ' ႏိုင္ငံရပ္ျခားကေန ဝယ္ယူခဲ့တဲ့ Network Lock က်ေနတဲ့ ဖုန္းေလးေတြကို အခ်ိန္တိုအတြင္း Network Lock ျဖည္ႏိုင္ပါၿပီ'),
(5, 'Unlock Tools မ်ားငွားနိုင္ ?', '<p>Paid Tool ဌားခ်င္/ဝယ္ခ်င္/သက္တမ္းတိုး ခ်င္သူမ်ား အတြက္</p><p>- မဌားပဲ ဝယ္တာ၊သက္တမ္းတိုးတာမ်ားလည္း လုပ္ေပးပါတယ္။</p><p>- ဌားမယ့္သူမ်ားအတြက္ Computer မွာတစ္ခါတည္းဝင္ ဖြင့္ေပးပါတယ္။</p><p>- ဝယ္/သက္တမ္းတိုးသူမ်ားအတြက္လည္း (ေငြလႊဲေပးတာ၊သုံးမယ့္ နာမည္) ေျပာတာနဲ႔တင္အၿပီးအစီး လုပ္ၿပီး အသင့္ေပးသုံးေစပါတယ္။</p><p>&nbsp;ဝယ္/ဌား/တိုး မယ့္သူမ်ားအတြက္ ရရွိႏိုင္အုံးမည့္ Tool မ်ား...</p><p>- Unlock Tool (အဌားဆို-12နာရီ 5000ks)</p><p>- MobileSea Tool (အဌားဆို-6နာရီ 5000ks)</p><p>- XWA Tool (အဌားဆို 3 နာရီ 3000ks)</p><p>- Sigmakey (အဌားဆို 1နာရီ 8000ks)</p><p>- DFT Pro Tool (အဌားဆို 24hur 10000ks)</p><p>- EMT Tool (အဌားဆို 24hur 8000ks)</p><p>More Tools Coming Soon...</p>'),
(6, 'iCloud Offical Unlock', '<p>i phone&nbsp;မ်ား unlock လုပ္နိင္ပါတယ္၊ icloud lock က်ေနေသာ phone imei ေပးပို႔ရန္လိုအပ္ပါသည္။<span style=\"font-size: 0.875rem; font-weight: initial;\">i phone&nbsp;မ်ား unlock လုပ္နိင္ပါတယ္၊ icloud lock က်ေနေသာ phone imei ေပးပို႔ရန္လိုအပ္ပါသည္။</span><span style=\"font-size: 0.875rem; font-weight: initial;\">i phone&nbsp;မ်ား unlock လုပ္နိင္ပါတယ္၊ icloud lock က်ေနေသာ phone imei ေပးပို႔ရန္လိုအပ္ပါသည္။</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `firmwares`
--

CREATE TABLE `firmwares` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `miui_version` varchar(225) NOT NULL,
  `android_version` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `download_link` varchar(255) NOT NULL,
  `download_link_1` varchar(225) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `models_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `firmwares`
--

INSERT INTO `firmwares` (`id`, `name`, `miui_version`, `android_version`, `size`, `type`, `download_link`, `download_link_1`, `details`, `created_at`, `models_id`) VALUES
(1, 'Mate 30', '12', '13', '2.67GB', '.zip', 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.28/xampp-windows-x64-8.0.28-0-VS16-installer.exe', 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.28/xampp-windows-x64-8.0.28-0-VS16-installer.exe', 'Huawei ဖုန္းေတြ Logo ရပ္ေနျပီး Firmware တင္မရျဖစ္ေနတာေတြ ၊\r\n          Downgrade ဆင္းခ်င္တာေတြ ၊ Boot Verify Fail ျဖစ္ေနတာေတြအတြက္\r\n          ဒီနည္းနဲ႕ေျဖရွင္းနုိင္ပါတယ္၊ ပထမဆုံးလုိအပ္တာေတြကေတာ့ မိမိဖုန္းနဲ႕သက္ဆုိင္တဲ့\r\n          Board Firmware ေတြကုိ Download ရယူထားဖို႔ပါပဲ၊ ေအာက္မွာေဒါင္းလိုက္ပါ။\r\n        \r\n\r\nပီးသြားရင္ေတာ့ Board Software တင္ဖုိ႕အတြက္ Tool ကုိ Download ရယူပါ။\r\n          Huawei Smart Phone Multi Download\r\n          ျပီးရင္ဖုန္းကုိ Qualcomm Qloader 9008 Mode ကုိ၀င္ရပါမယ္.\r\n          adb သိတဲ့လူေတြကေတာ့ adb reboot edl နဲ႕၀င္ပါ။\r\n          adb မသိတဲ့သူေတြကေတာ့ Qualcomm Jig နဲ႕၀င္လုိ႕ရပါတယ္။\r\n          Computer ထဲမွာ Qualcomm Driver သြင္းဖုိ႕မေမ့ပါနဲ႕\r\n          Huawei Official Board Software ရဲ႕ ပုံေလးကေတာ့ ေအာက္မွာျမင္ရတဲ့ပုံေလးပါ။\r\n          ျပီးရင္ Huawei Smart Phone Multi Download ကုိ ဖြင့္လုိက္ပါ။\r\n          Manufacture ကုိေရြးေပးပါ။\r\n          ျပီးရင္ Next ကုိ နွိပ္လုိက္ပါ။\r\n          Password ကုိ 12345 ဆုိျပီးေပးလုိက္ပါ။\r\n          မိမိ Flash လုိတဲ့ Board Firmware ထဲက xml ကုိေရြးေပးလုိက္ပါ။\r\n          ျပီးရင္ Next ကုိ သြားပါ။\r\n          Scan & Download ကုိနွိပ္ပါ။ ျပီးရင္ ဖုန္းကုိ edl mode ၀င္လုိက္ပါ။\r\n          Device Manager မွာၾကည့္လုိက္ရင Qualcomm Qloader 9008 ဆုိျပီး\r\n          port တစ္ခုတက္လာတာေတြ႕ရပါလိမ့္မယ္။\r\n          40% ေရာက္သြားတာနဲ႕ ဖုန္းဟာ Reboot က်ျပီး\r\n          သုံးေရာင္ျခယ္ Color နဲ႕တက္လာပါလိမ့္မယ္\r\n          ျပီးရင္ Download Complete ျဖစ္ျပီဆုိရင္ေတာ့ ဖုန္းကုိ Battery ျဖဳတ္လုိက္ပါ။\r\n          Official Firmware ျပန္တင္လုိက္ပါ။ ဒါဆုိအဆင္ေျပပါျပီ။', '2023-07-27 09:54:46', 17),
(2, 'Mate 40 Pro', '13', '12', '3.59GB', '.update', 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.28/xampp-windows-x64-8.0.28-0-VS16-installer.exe', 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.28/xampp-windows-x64-8.0.28-0-VS16-installer.exe', '<div><b><span style=\"font-size: 1rem;\">Huawei ဖုန္းေတြ Logo ရပ္ေနျပီး Firmware တင္မရျဖစ္ေနတာေတြ ၊Downgrade ဆင္းခ်င္တာေတြ ၊ Boot Verify Fail ျဖစ္ေနတာေတြအတြက္ဒီနည္းနဲ႕ေျဖရွင္းနုိင္ပါတယ္၊ ပထမဆုံးလုိအပ္တာေတြကေတာ့ မိမိဖုန္းနဲ႕သက္ဆုိင္တဲ့ Board Firmware ေတြကုိ </span><span style=\"font-size: 1rem; background-color: rgb(255, 0, 0);\"><font color=\"#000000\" style=\"\">Download </font></span><span style=\"font-size: 1rem;\">ရယူထားဖို႔ပါပဲ၊ ေအာက္မွာေဒါင္းလိုက္ပါ။</span></b><br></div><div><br></div><div>ပီးသြားရင္ေတာ့ Board Software တင္ဖုိ႕အတြက္ Tool ကုိ Download ရယူပါ။Huawei Smart Phone Multi Download ျပီးရင္ဖုန္းကုိ Qualcomm Qloader 9008 Mode ကုိ၀င္ရပါမယ္. adb သိတဲ့လူေတြကေတာ့ adb reboot edl နဲ႕၀င္ပါ။ adb မသိတဲ့သူေတြကေတာ့ Qualcomm Jig နဲ႕၀င္လုိ႕ရပါတယ္။Computer ထဲမွာ Qualcomm Driver သြင္းဖုိ႕မေမ့ပါနဲ႕ Huawei Official Board Software ရဲ႕ ပုံေလးကေတာ့ ေအာက္မွာျမင္ရတဲ့ပုံေလးပါ။ ျပီးရင္ Huawei Smart Phone Multi Download ကုိ ဖြင့္လုိက္ပါ။ Manufacture ကုိေရြးေပးပါ။ ျပီးရင္ Next ကုိ နွိပ္လုိက္ပါ။ Password ကုိ 12345 ဆုိျပီးေပးလုိက္ပါ။မိမိ Flash လုိတဲ့ Board Firmware ထဲက xml ကုိေရြးေပးလုိက္ပါ။ျပီးရင္ Next ကုိ သြားပါ။Scan &amp; Download ကုိနွိပ္ပါ။ ျပီးရင္ ဖုန္းကုိ edl mode ၀င္လုိက္ပါ။Device Manager မွာၾကည့္လုိက္ရင Qualcomm Qloader 9008 ဆုိျပီးport တစ္ခုတက္လာတာေတြ႕ရပါလိမ့္မယ္။40% ေရာက္သြားတာနဲ႕ ဖုန္းဟာ Reboot က်ျပီးသုံးေရာင္ျခယ္ Color နဲ႕တက္လာပါလိမ့္မယ္ ျပီးရင္ Download Complete ျဖစ္ျပီဆုိရင္ေတာ့ ဖုန္းကုိ Battery ျဖဳတ္လုိက္ပါ။Official Firmware ျပန္တင္လုိက္ပါ။ ဒါဆုိအဆင္ေျပပါျပီ။</div><div><br></div><div>Posted Updated By kyawntharr</div>', '2023-07-27 11:01:03', 18),
(3, 'Mate 40 Pro backup', '13', '12', '4.01GB', 'Recovery', 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.28/xampp-windows-x64-8.0.28-0-VS16-installer.exe', '', '', '2023-07-27 11:03:03', 18),
(17, 'Xiaomi 13 Pro Global', 'V14.0.9.0.TMBMIXM', '13.0', '6.8 GB', 'Fastboot', 'https://bigota.d.miui.com/V14.0.9.0.TMBMIXM/nuwa_global_images_V14.0.9.0.TMBMIXM_20230414.0000.00_13.0_global_32953d0dc0.tgz', '', '', '2023-07-28 07:55:01', 27),
(19, 'Redmi Note 12 Pro', 'V14.0.3.0.TMOINXM', '13', '5.2 GB', 'Fastboot', 'https://bigota.d.miui.com/V13.0.6.0.SMOINXM/ruby_in_global_images_V13.0.6.0.SMOINXM_20230221.0000.00_12.0_in_df252e805a.tgz', '', '', '2023-07-29 13:56:00', 44),
(23, 'Y02 PD2236f', '13', '12', '4.91GGB', 'recovery', 'https://drive.google.com/file/d/1WP8VvqtBTXK4w4hmMty8yDUc2QUUtzWe/view', 'https://firmwaredrive.com/index.php?a=downloads&b=file&id=37389', '<p>The vivo firmware helps you Upgrade or Downgrade the Stcok firmwares (OS) of your vivo smartphone , featurephone and tablet.It also allows you to fix any IMEI related issue,Software related issue or bootloop issue<br></p>', '2023-08-03 21:51:55', 36),
(24, 'X90 Pro PD2242F Stock Firmware (ROM)', '13', '12', '9.03GB', 'Recovery', 'https://drive.google.com/file/d/1Dv3j7vAHAwvVqlHVsG_Fd9kdwd4XUE6R/view', 'https://firmwaredrive.com/index.php?a=downloads&b=file&id=35270', '<p>The vivo firmware helps you Upgrade or Downgrade the stock firmware (OS) of your vivo smartphone,featurephone and tablet.It also allows you to fix any MIEI related issue,Software relate issue,or Bootloop issue.<br></p>', '2023-08-08 14:09:40', 35),
(25, 'X90 Pro PD2242F_EX_A_13.1.12.1.BWDATA.W20V0001_Update_OTA', '14', '13', '4.72GB', 'Recovery Update', 'https://drive.google.com/file/d/1DPLdxd02lGKdqT9JIoML_xFM76gawyMR/view', 'https://drive.google.com/file/d/1DPLdxd02lGKdqT9JIoML_xFM76gawyMR/view', '<p>The vivo firmware helps you Upgrade or Downgrade the stock firmware (OS) of your vivo smartphone,featurephone and tablet.It also allows you to fix any MIEI related issue,Software relate issue,or Bootloop issue.<br></p>', '2023-08-08 14:13:05', 35),
(26, 'Redmi Note 12 Pro Speed/POCO X5 Pro 5G', 'V14.0.6.0.SMSCNXM', '12', '6.36GB', 'China ,Stable ,MD5', 'https://mifirm.net/download/9219', 'https://mifirm.net/download/9219', 'Download the firmware/ROM flash for Xiaomi Redmi Note 12 Pro Speed/POCO X5 Pro 5G with the code is redwood. Please make sure the code is exact.', '2023-08-08 14:23:20', 44),
(27, 'Redmi Note 11T Pro/Pro+/POCO X4 GT/Redmi K50i', 'V14.0.5.0.TLOCNXM', '13.0', '6.8G', 'China Stable', 'https://mifirm.net/download/10205', 'https://mifirm.net/download/10205', 'https://mifirm.net/download/10205', '2023-08-08 14:28:10', 23),
(28, 'Mate 50 Pro DCO-LX9 Firmware (Flash File)', '14', '13', '4.67GB', 'Update.zip(Dload)', 'https://drive.google.com/file/d/1EHkS-J1RtBtSwkqv7WJ7GD8wr6eS4iDz/view', 'https://drive.google.com/file/d/1EHkS-J1RtBtSwkqv7WJ7GD8wr6eS4iDz/view', '<p>Huawei Stock ROM helps you upgrade or downgrade your Huawei device\'s OS.It also allows you to fix the device if it has software-related issues,Bootloop,and IMEI-relate issues.<br></p>', '2023-08-08 14:36:41', 28),
(29, 'SM-N9810', '0.00', '13', '6.68GB', 'N9810ZSS6HWG8', 'https://samfrew.com/download/Galaxy__Note20__5G__/smpl/BRI/N9810ZSS6HWG8/N9810OZS6HWG8', 'https://samfrew.com/download/Galaxy__Note20__5G__/smpl/BRI/N9810ZSS6HWG8/N9810OZS6HWG8', '<p>Samsung Stock ROM helps you upgrade or downgrade your Huawei device\'s OS.It also allows you to fix the device if it has software-related issues,Bootloop,and IMEI-relate issues.<br></p>', '2023-08-08 14:45:28', 46);

-- --------------------------------------------------------

--
-- Table structure for table `firmware_info`
--

CREATE TABLE `firmware_info` (
  `id` int(11) NOT NULL,
  `brands_id` int(11) NOT NULL,
  `models_id` int(11) NOT NULL,
  `firmwares_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `brands_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `name`, `image`, `brands_id`) VALUES
(16, 'Mate 20X 5G', '1690450448mat-20x-5G.png', 1),
(17, 'Mate 30 (black)', '1690450463mate30-black.png', 1),
(18, 'Mate 40 Pro', '1690450475mate-40pro.png', 1),
(23, 'Xiaomi 11T Pro', '1690527273xiaomi-11t-pro.png', 3),
(24, 'Xiaomi 12T', '1690527289xiaomi-12t.png', 3),
(26, 'Xiaomi 13 Lite', '1690527328xiaomi13-lite.png', 3),
(27, 'Xiaomi 13 Pro', '1690527346xiaomi13-pro.png', 3),
(28, 'Mate 50 Pro', '1690527406mate50-pro.png', 1),
(29, 'Mate X3', '1690527422mateX3.png', 1),
(30, 'Mate 30RS (black)', '1690527449pd-mate30-rs-black.png', 1),
(31, 'T2 5G', '1690615298t2 5g.png', 6),
(32, 'T2X 5G', '1690615319t2x 5g.png', 6),
(33, 'V25', '1690615339v25.png', 6),
(34, 'V29 Lite 5G', '1690615358v29 lite 5g.png', 6),
(35, 'X 90 Pro', '1690615383x90 pro.png', 6),
(36, 'Y02', '1690615421y02.png', 6),
(37, 'Y 02 T', '1690615442y02t.png', 6),
(38, 'Y 27 5G', '1690615466y27 5g.png', 6),
(39, 'Y 27', '1690615483y27.png', 6),
(40, 'Y36 5G', '1690615500y36 5g.png', 6),
(41, 'Y56 5G', '1690615517y56 5g.png', 6),
(42, 'Y78 5G', '1690615531y78 5g.png', 6),
(43, 'Y100  A', '1690615544y100 a.png', 6),
(44, 'Redmi Note 12 Pro', '1690638458Redmi note 12 pro.png', 3),
(46, 'Galaxy Note20 5G', '1691505769samsung-galaxy-note20-5g.jpg', 17);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `details` varchar(255) NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `amount`, `details`, `image`) VALUES
(4, 'Basic', 50000, '<ul><li><font color=\"#424242\">Update Firmware</font></li><li><font color=\"#424242\">Mi Global Rom Change</font></li><li><font color=\"#424242\">Myanmar Font Change</font></li><li><font color=\"#424242\">Bootloader Unlock</font></li></ul>', '1692555350android_outline.png'),
(6, 'IOS', 300000, '<ul><li><font color=\"#424242\">ICloud Unlock (Bypass)</font></li><li><font color=\"#424242\">ICloud Offical Unlock</font></li><li><font color=\"#424242\">IOS Update</font></li><li><font color=\"#424242\">Network Lock</font></li></ul>', '1692555494apple.png'),
(11, 'FRP/Network Unlock', 100000, '<ul><li>Unlock Mi Account </li><li>Unlock Samsung FRP</li><li>Unlock Opp Network lock</li></ul>', '1693237576unlock.png');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'kyawntharmdy@gmail.com', 604198, '2023-08-05 15:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `payment_methods` varchar(225) NOT NULL,
  `card_number` varchar(11) NOT NULL,
  `name_on_card` varchar(225) NOT NULL,
  `amount` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `email`, `payment_methods`, `card_number`, `name_on_card`, `amount`, `package_id`, `created_at`) VALUES
(1, 'kyawntharmdy@gmail.com', 'Wave Money', '9774560051', 'yell kyaw', 300000, 6, '2023-09-09 04:36:05'),
(3, 'yellkyaw@gmail.com', 'Wave Money', '9774560051', 'yell kyaw', 50000, 4, '2021-09-09 04:36:05'),
(4, 'kyawntharmdy@gmail.com', 'Kpay', '9774560051', 'yell kyaw', 50000, 4, '2021-09-09 04:36:05'),
(5, 'mgmg@gmail.com', '2', '9774560051', 'yell kyaw', 50000, 4, '2022-09-09 14:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `packages_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `date`, `packages_id`, `payment_id`, `user_id`) VALUES
(2, '2023-09-08 12:40:18', 4, 4, 10),
(3, '2023-09-08 14:26:14', 4, 3, 7),
(11, '2023-09-09 15:31:18', 4, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `discription` text NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `role`, `discription`, `image`) VALUES
(1, 'Nang Yu Yu Zin', 'PHP', 'Life is full of uncertainties, and trust in the journey itself is important. Trust that, even in difficult times, there are opportunities for growth, learning, and positive change.', '64f764fda7245_face1.jpg'),
(2, 'Waddy', 'PHP', 'Life is full of uncertainties, and trust in the journey itself is important. Trust that, even in difficult times, there are opportunities for growth, learning, and positive change.', '64f758052ffc9_face2.jpg'),
(3, 'Aung Thet Lwin', 'PHP', 'Life is full of uncertainties, and trust in the journey itself is important. Trust that, even in difficult times, there are opportunities for growth, learning, and positive change.', '1693935751face3.jpg'),
(5, 'Tester', 'test | Service', 'Node js is an open-source, cross-platform JavaScript runtime environment.', '1693935696nour.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `name`) VALUES
(1, 'SP Flash Tools'),
(2, 'Mi Flash Tool'),
(3, 'Research Download Tool'),
(4, 'Upgrade Download Tool');

-- --------------------------------------------------------

--
-- Table structure for table `tools_list`
--

CREATE TABLE `tools_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `download_link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tools_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tools_list`
--

INSERT INTO `tools_list` (`id`, `name`, `download_link`, `image`, `tools_id`, `post`, `created_at`) VALUES
(1, 'SPFlash Tool v5.1924', 'https://spflashtool.com/download/', '1692283094_sp-flash-tool.jpg', 1, 'Flashing to Android stock-ROM (scatter based)\r\nFlash Custom ROM (scatter based)\r\nApplication for Fixing Bricked device.\r\nAdvanced Memory testing and verifying.\r\nRead / Write parameters.\r\nErasing / Formatting / Reset Your MTK based device.\r\n', '2023-08-17 14:38:14'),
(11, 'SPFlashTool v3.1224.0.100', 'https://www.mediafire.com/file/xhu0m1vckjudmgl/SP_Flash_Tool_v3.1222_Win.zip/file', '1692208192_sp-flash-tool.jpg', 1, '<h4>Basic Guide</h4><ul><li>Flashing to Android stock-ROM (scatter based)</li><li>Flash Custom ROM (scatter based)</li><li>Application for Fixing Bricked device.</li><li>Advanced Memory testing and verifying.</li><li>Read / Write parameters.</li><li>Erasing / Formatting / Reset Your MTK based device.</li></ul><h4><b><font color=\"#000000\" style=\"background-color: rgb(206, 198, 206);\">How To Use?</font></b></h4><ul><li>Pc or Laptop</li><li>USB data cable for the device</li><li>Drivers (MediaTek USB-VCOM drivers ). You can see above tutorial and downloading links</li><li>Scatter file + files to be flashed</li></ul>', '2023-07-16 19:43:34'),
(14, 'SPD Research Tool R22.19.1301', 'https://www.mediafire.com/file_premium/69a1e4uxkea4of7/SPD_Research_Tool_R22.19.1301.zip/file', '1692259207_spreadtrum-research-tool.png', 3, '<h4>How to use?</h4><p>SPD Research Tool is also known as Speradtrum Research Tool,is a windows utility that allows you to flash the firmware on mobile devvices running Spreadtrum chipsets.It features a simple user interface,making it easy to use even for beginners.The tool supports various Spreadtrum-based devices including smartphones,tablets and feature phones.</p>', '2023-08-17 08:00:07'),
(15, 'Xiaomi flash Tool v-20220207', 'https://xiaomiflashtool.com/wp-content/uploads/MiFlash20220507.zip', '1692267249_xiaomi-flash-tool.png', 2, '<h3>Xiaomi flash Tool</h3><p>Xiaomi flash tool is designed to help users flash the firmware on their Xiaomi devices,simplifying updating or restoring the devices\'s software.Whether troubleshooting software-related issues or seeking to upgrade your device,the Xiaomi filash tool offers a reliable and user-friendly solution.</p>', '2023-08-17 10:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `video_url` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `video_url`, `description`, `package_id`, `created_at`, `updated_at`) VALUES
(1, 'F22 Raptor', '64f94e7372628_F-22 Raptor Hype.mp4', '<p>The F-22 Raptor is a fifth-generation air superiority fighter aircraft developed for the United States Air Force (USAF). It is considered the first operational aircraft to combine supercruise, supermaneuverability, stealth, and sensor fusion in a single weapons platform, enabling it to conduct missions, primarily counter-air operations, in highly contested environments.<br></p>', NULL, '2023-09-07 04:15:47', '2023-09-07 04:15:47'),
(2, 'F35 ', '64f9504e2eb0f_F-35.mp4', '<p>The F-35A is the U.S. Air Force’s latest fifth-generation fighter. It will replace the U.S. Air Force’s aging fleet of F-16 Fighting Falcons and A-10 Thunderbolt II’s, which have been the primary fighter aircraft for more than 20 years, and bring with it an enhanced capability to survive in the advanced threat environment in which it was designed to operate.</p>', NULL, '2023-09-07 04:23:42', '2023-09-07 05:05:09'),
(3, 'B2 Spirit', '64f95101cd4da_Tip of the Spear- The B-2 Spirit — Official Trailer.mp4', '<p>The B-2 Spirit is a multi-role bomber capable of delivering both conventional and nuclear munitions. A dramatic leap forward in technology, the bomber represents a major milestone in the U.S. bomber modernization program. The B-2 brings massive firepower to bear, in a short time, anywhere on the globe through previously impenetrable defenses.<br></p>', NULL, '2023-09-07 04:26:41', '2023-09-07 04:26:41'),
(4, '120mm Mortar', '64f951fa0c666_How does a mortar work-.mp4', '<p>This guest article is by a serving Finnish Army Officer, who prefers to remain anonymous. He is an authority on artillery and infantry weapon systems, as well as an active contributor to discussions on key defence topics.<br></p>', NULL, '2023-09-07 04:30:50', '2023-09-07 04:30:50'),
(5, 'AK 47', '64f954bd25437_How an AK-47 Works.mp4', '<p>AK-47, also called Kalashnikov Model 1947, Soviet assault rifle, possibly the most widely used shoulder weapon in the world. The initials AK represent Avtomat Kalashnikova, Russian for “automatic Kalashnikov,” for its designer, Mikhail Timofeyevich Kalashnikov, who designed the accepted version of the weapon in 1947.<br></p>', NULL, '2023-09-07 04:42:37', '2023-09-07 04:42:37'),
(6, 'M4 / AR 15 (Full Auto)', '64f955894c9b9_Full Auto M4_AR15.mp4', '<p>The term “modern sporting rifle,” aka MSR, was coined to describe today’s very popular semi-automatic rifle designs, including the AR-15 and similar variants.&nbsp; These rifles are used by hunters, competitors, millions of Americans seeking home-defense guns and many others who simply enjoy going to the range. The modular nature of the platform allows it to be configured for various applications and body types.<br></p>', 6, '2023-09-07 04:46:01', '2023-09-07 19:20:16'),
(7, 'iCloud Unlock', '64f956f947b7e_Apple Trailer.mp4', '<p>If it\'s your phone, enter the Apple ID username and password that was first used to activate it.<span style=\"font-size: 0.875rem; font-weight: initial;\">For a used iPhone, ask the original owner to enter their credentials, sign out of iCloud, remove the Apple ID, and erase the device.</span></p>', 6, '2023-09-07 04:52:09', '2023-09-07 04:52:09'),
(8, 'iphone 13 network unlock', '64f957bfbcd5d_Apple Trailer.mp4', '<p>If iCloud locked your iPhone, how to unlock it? Just free download AnyUnlock to unlock iCloud activation lock on iPhone/iPad/iPod Touch within minutes. Only 3 steps are needed. Everyone can use this tool with ease. Available for Windows &amp; Mac.<br></p>', 6, '2023-09-07 04:55:27', '2023-09-07 04:55:27'),
(9, 'The next Revolution Android', '64f958532ad87_The next evolution of Android.mp4', '<p>Android is a mobile operating system based on a modified version of the Linux kernel and other open-source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.<br></p>', 4, '2023-09-07 04:57:55', '2023-09-07 04:57:55'),
(10, 'Samsung Google Frp Bypass', '64fcc082d9de9_The next evolution of Android.mp4', '<p>samsung samsung&nbsp;<span style=\"font-weight: initial;\">samsung samsung</span><span style=\"font-weight: initial;\">&nbsp;samsung&nbsp;</span><span style=\"font-weight: initial;\">samsung samsung</span><span style=\"font-weight: initial;\">&nbsp;samsung&nbsp;</span><span style=\"font-weight: initial;\">samsung samsung</span><span style=\"font-weight: initial;\">&nbsp;samsung&nbsp;</span><span style=\"font-weight: initial;\">samsung samsung</span></p>', 11, '2023-09-09 18:59:14', '2023-09-09 18:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `token` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `type` varchar(225) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `confirm_password`, `token`, `image`, `created_at`, `updated_at`, `type`) VALUES
(7, 'yell kyaw', 'yellkyaw@gmail.com', 'Yellkyaw12223#', 'Yellkyaw12223#', 227860, '1692557099android-os.png', '2023-08-20 18:44:59', '2023-08-20 18:44:59', 'User'),
(10, 'mgkyawn', 'kyawntharmdy@gmail.com', 'Mgkyawn123@', 'Mgkyawn123@', 453325, '1692639959nour.jpg', '2023-08-21 17:47:18', '2023-08-21 17:47:18', 'Admin'),
(20, 'He He', 'hacker.001.myanmar@gmail.com', 'Mgkyawn123@', 'Mgkyawn123@', 677003, '1693935751face3.jpg', '2023-09-07 05:49:02', '2023-09-07 05:49:02', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_ibfk_1` (`account_type_id`),
  ADD KEY `accounts_ibfk_2` (`users_id`);

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `box_list`
--
ALTER TABLE `box_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `box_id` (`box_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_info`
--
ALTER TABLE `buyer_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_id` (`packages_id`),
  ADD KEY `tutorials_id` (`tutorials_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firmwares`
--
ALTER TABLE `firmwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `models_id` (`models_id`);

--
-- Indexes for table `firmware_info`
--
ALTER TABLE `firmware_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_id` (`brands_id`),
  ADD KEY `models_id` (`models_id`),
  ADD KEY `firmwares_id` (`firmwares_id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_id` (`brands_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_id` (`packages_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sale_ibfk_2` (`payment_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools_list`
--
ALTER TABLE `tools_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tools_id` (`tools_id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutorials_ibfk_1` (`package_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `box`
--
ALTER TABLE `box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `box_list`
--
ALTER TABLE `box_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `buyer_info`
--
ALTER TABLE `buyer_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `firmwares`
--
ALTER TABLE `firmwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `firmware_info`
--
ALTER TABLE `firmware_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tools_list`
--
ALTER TABLE `tools_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `box_list`
--
ALTER TABLE `box_list`
  ADD CONSTRAINT `box_list_ibfk_1` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`);

--
-- Constraints for table `buyer_info`
--
ALTER TABLE `buyer_info`
  ADD CONSTRAINT `buyer_info_ibfk_2` FOREIGN KEY (`packages_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `buyer_info_ibfk_3` FOREIGN KEY (`tutorials_id`) REFERENCES `tutorials` (`id`),
  ADD CONSTRAINT `buyer_info_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `firmwares`
--
ALTER TABLE `firmwares`
  ADD CONSTRAINT `firmwares_ibfk_1` FOREIGN KEY (`models_id`) REFERENCES `models` (`id`);

--
-- Constraints for table `firmware_info`
--
ALTER TABLE `firmware_info`
  ADD CONSTRAINT `firmware_info_ibfk_1` FOREIGN KEY (`brands_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `firmware_info_ibfk_2` FOREIGN KEY (`models_id`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `firmware_info_ibfk_3` FOREIGN KEY (`firmwares_id`) REFERENCES `firmwares` (`id`);

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`brands_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`packages_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tools_list`
--
ALTER TABLE `tools_list`
  ADD CONSTRAINT `tools_list_ibfk_1` FOREIGN KEY (`tools_id`) REFERENCES `tools` (`id`);

--
-- Constraints for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD CONSTRAINT `tutorials_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
