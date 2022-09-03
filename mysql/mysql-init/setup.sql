CREATE DATABASE IF NOT EXISTS sales_data;

USE sales_data;

CREATE TABLE `sales_insights` (
  `sr_no` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `sale_amount` int NOT NULL
);
