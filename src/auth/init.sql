DROP USER IF EXISTS 'auth_user'@'%';

CREATE USER IF NOT EXISTS 'auth_user'@'%' IDENTIFIED BY 'Burak123';

GRANT SUPER ON *.* TO 'auth_user'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS auth;
USE auth;

CREATE TABLE IF NOT EXISTS user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);


INSERT INTO user (email, password) VALUES ('***@gmail.com', 'Admin123');
