-- SQL script that creates a table users

CREATE TABLE IF NOT EXISTS users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL UNIQUE,
  name varchar(255),
  country ENUM('US', 'CA', 'TN') NOT NULL
);
