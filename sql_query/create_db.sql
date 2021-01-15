DROP DATABASE IF EXISTS employees;
CREATE DATABASE IF NOT EXISTS employees; 

USE employees;
CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(10)     NOT NULL,
    last_name   VARCHAR(10)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

INSERT INTO `employees` VALUES 
(10001,'1970-01-23','James','Smith','M','2020-06-26'),
(10002,'1994-06-16','Mary','Garcia','F','2017-07-03'),
(10003,'1989-10-15','David','Rodriguez','M','2019-02-21'),
(10004,'1986-05-01','Maria','Martinez','F','2018-09-13');
