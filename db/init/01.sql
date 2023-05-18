-- -------------------------------------------------------------
-- TablePlus 5.3.6(496)
--
-- https://tableplus.com/
--
-- Database: employees_app
-- Generation Time: 2023-05-17 17:14:10.7780
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `employees` (
  `id` varchar(36) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birth_date` timestamp NOT NULL,
  `location` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `birth_date`, `location`, `title`, `department`, `email`, `profile_image`, `created_at`, `updated_at`) VALUES
('ba21a13f-a69e-456d-9e5c-2345b316d613', 'Test 3', 'Asd', '2023-05-14 00:00:00', 'Asd', 'Ashyg', 'Fghs', 'asdf@asd.com', 'https://randomuser.me/api/portraits/men/1.jpg', '2023-05-17 12:02:52', '2023-05-17 13:48:46'),
('bdd32132-4961-4956-912e-80cdf0bdf6b3', 'Teas 5', 'Asd', '2019-05-16 00:00:00', 'Asda', 'Sdgf', 'Adah', 'asdf@ad.com', 'https://randomuser.me/api/portraits/men/2.jpg', '2023-05-17 12:04:17', '2023-05-17 12:04:17'),
('cd4a0c65-150a-4702-9d77-97fa76f376a5', 'Asd', 'Asd', '2023-05-17 00:00:00', 'Asda', 'Sd', 'Asd', 'a@gm.com', 'https://randomuser.me/api/portraits/men/3.jpg', '2023-05-17 12:00:28', '2023-05-17 12:00:28'),
('cebece1d-ab85-46f4-8fbf-bf204d44c368', 'Faysal', 'Bejawi', '1994-01-30 00:00:00', 'Lebanon', 'Developer', 'QA', 'faysal@gmail.com', 'https://randomuser.me/api/portraits/men/4.jpg', '2023-05-17 11:59:53', '2023-05-17 12:00:03'),
('d3cb37a0-6fa0-446b-830b-36ba5f13f860', 'Mohammed', 'Berjawi', '1995-03-25 00:00:00', 'Lebanon', 'Game Developer', 'Development', 'testing1234@gmail.com', 'https://randomuser.me/api/portraits/men/5.jpg', '2023-05-17 08:45:30', '2023-05-17 11:07:15'),
('f831c055-0387-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe3@example.com', 'https://randomuser.me/api/portraits/men/6.jpg', '2023-05-17 00:00:00', '2023-05-17 11:59:12'),
('f831c055-0796-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe9@example.com', 'https://randomuser.me/api/portraits/men/7.jpg', '2023-05-17 00:00:00', '2023-05-17 11:59:08'),
('f831c055-1023-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe5@example.com', 'https://randomuser.me/api/portraits/men/8.jpg', '2023-05-17 00:00:00', '2023-05-17 11:59:04'),
('f831c055-1072-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe@example.com', 'https://randomuser.me/api/portraits/men/9.jpg', '2023-05-17 00:00:00', '2023-05-17 11:58:58'),
('f831c055-1234-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe8@example.com', 'https://randomuser.me/api/portraits/men/10.jpg', '2023-05-17 00:00:00', '2023-05-17 11:58:54'),
('f831c055-1238-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe7@example.com', 'https://randomuser.me/api/portraits/men/11.jpg', '2023-05-17 00:00:00', '2023-05-17 11:58:02'),
('f831c055-5674-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe4@example.com', 'https://randomuser.me/api/portraits/men/12.jpg', '2023-05-17 00:00:00', '2023-05-17 11:57:54'),
('f831c055-7348-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe2@example.com', 'https://randomuser.me/api/portraits/men/13.jpg', '2023-05-17 00:00:00', '2023-05-17 11:57:49'),
('f831c055-7685-4a8b-8d71-4e35255a2e1a', 'John', 'Doe', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe6@example.com', 'https://randomuser.me/api/portraits/men/14.jpg', '2023-05-17 00:00:00', '2023-05-17 11:57:41'),
('f831c055-8504-4a8b-8d71-4e35255a2e1a', 'John', 'Image', '1990-05-15 00:00:00', 'New York', 'Manager', 'Sales', 'johndoe1@example.com', 'https://randomuser.me/api/portraits/men/15.jpg', '2023-05-17 00:00:00', '2023-05-17 11:57:32');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;