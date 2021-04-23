--Create Database Schema--

DROP DATABASE IF EXISTS emp_trackerDB;
CREATE DATABASE emp_trackerDB;

USE emp_trackerDB;

CREATE TABLE department
(
    id INT NOT NULL AUTO_INCREMENT
    , name VARCHAR(30) NOT NULL
    , PRIMARY KEY (id)
);

CREATE TABLE role
(
    id INT NOT NULL AUTO_INCREMENT
    , title VARCHAR(30) NOT NULL
    , salary DECIMAL(8, 2)
    , department_id INT
    , PRIMARY KEY (id)
);

CREATE TABLE employee
(
    id INT NOT NULL AUTO_INCREMENT
    , first_name VARCHAR(30)
    , last_name VARCHAR(30)
    , role_id INT
    , manager_id INT DEFAULT NULL
    , PRIMARY KEY (id)
);

--Create Starting Table Data--

INSERT INTO department (name)
VALUES ("Operations")
, ("Sales")
, ("Finance")
, ("Legal")
, ("Engineering");

INSERT INTO role (title, salary, department_id)
VALUES ("CEO", 250000, 1)
, ("COO", 200000, 1) 
, ("CTO", 200000, 5) 
, ("CFO", 200000, 3)
, ("Sales Team Lead", 125000, 2) 
, ("Salesperson", 90000, 2)
, ("Controller", 100000, 3)
, ("Accountant", 800000, 3)
, ("Legal Team Lead", 150000, 4) 
, ("Lawyer", 110000, 4) 
, ("Engineer Team Lead", 135000, 5) 
, ("Software Engineer", 95000, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES("Mark", "Phillips", 1, NULL)
, ("Obi", "Ude", 2, NULL)
, ("Natasha", "Martinez", 3, NULL)
, ("Robert", "Yes", 4, NULL)
, ("Crystal", "Warren", 5, 2)
, ("Joanne", "Algranati", 6, 5)
, ("Dahlene", "Scott", 7, 4)
, ("Busola", "Oye", 8, 7)
, ("Dean", "Rodney", 9, 2)
, ("Diann", "Pena", 10, 9)
, ("Douglas", "Wright", 11, 3)
, ("Lamont", "Franks", 12, 11);
