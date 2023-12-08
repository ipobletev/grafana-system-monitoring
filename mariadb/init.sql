CREATE DATABASE IF NOT EXISTS main_db;
USE main_db;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- Create table
CREATE TABLE main_table (
  `inc` INT AUTO_INCREMENT PRIMARY KEY,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `uuid` CHAR(36) NOT NULL UNIQUE,
  `main_data` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;