-- create data base
CREATE DATABASE IF NOT EXISTS BicycleStore;
USE BicycleStore;


-- create_user_table
CREATE TABLE IF NOT EXISTS User (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    UserEmail VARCHAR(255) UNIQUE,
    UserName VARCHAR(50) UNIQUE,
    DateOfBirth DATE,
    UserAge INT,
    UserPassword VARCHAR(255),
    LastLogin DATETIME,
    PhoneNumber BIGINT,
    RegistrationDate DATE,
    UserGender BOOLEAN
);
-- create_message_table
CREATE TABLE IF NOT EXISTS Message (
    MessageID INT PRIMARY KEY AUTO_INCREMENT,
    SenderID INT,
    SenderEmail VARCHAR(255),
    SenderUserName VARCHAR(50),
    Title VARCHAR(255),
    Body TEXT,
    Timestamp DATETIME,
    Status BOOLEAN,
    FOREIGN KEY (SenderID) REFERENCES User(UserID),
    FOREIGN KEY (SenderEmail) REFERENCES User(UserEmail),
    FOREIGN KEY (SenderUserName) REFERENCES User(UserName)
);
-- create_brand_table

CREATE TABLE Brand (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(255) UNIQUE,
    description TEXT,
    year_founded DATE
);


CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    brand_id INT,
    frame_material VARCHAR(255),
    frame_size VARCHAR(50),
    wheel_size VARCHAR(50),
    color VARCHAR(50),
    price DECIMAL(10, 2),
    customer_review TEXT,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);