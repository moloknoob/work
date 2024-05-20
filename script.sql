-- Active: 1704145176789@@127.0.0.1@3306@banta
CREATE DATABASE IF NOT EXISTS banta;

USE banta;

CREATE DATABASE IF NOT EXISTS banta;

USE banta;

CREATE TABLE IF NOT EXISTS full_object (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    language VARCHAR(50),
    external_id VARCHAR(50),
    bio VARCHAR(255),
    version DECIMAL(4, 2)
);
