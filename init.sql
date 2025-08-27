-- init.sql
-- This script contains the SQL commands to create the database and the 'users' table.
-- It will be executed automatically by the Docker container on startup.

-- Create the database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS users_db;

-- Use the newly created database
USE users_db;

-- Drop the table if it already exists to ensure a clean start
DROP TABLE IF EXISTS users;

-- Create the 'users' table with the specified columns
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

-- Insert some sample data into the new 'users' table
INSERT INTO users (username, email, password_hash) VALUES
('johndoe', 'johndoe@example.com', 'hashed_password_1'),
('janedoe', 'janedoe@example.com', 'hashed_password_2');