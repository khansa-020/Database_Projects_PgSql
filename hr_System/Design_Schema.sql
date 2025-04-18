-- Inserts 10 sample records into the Employee table of hr_system database
INSERT INTO Employee (id, name, email, salary) VALUES
(7, 'Usman Khan', 'usman.khan@example.com', 60000),
(8, 'Sara Amjad', 'sara.amjad@example.com', 44000),
(9, 'Umar Riaz', 'umar.riaz@example.com', 62000),
(10, 'Ayesha Noor', 'ayesha.noor@example.com', 58000),
(11, 'Bilal Tariq', 'bilal.tariq@example.com', 50000),
(12, 'Nida Zafar', 'nida.zafar@example.com', 57000),
(13, 'Daniyal Malik', 'daniyal.malik@example.com', 61000),
(14, 'Zainab Shah', 'zainab.shah@example.com', 69000),
(15, 'Hamza Iqbal', 'hamza.iqbal@example.com', 53000),
(16, 'Hira Yousuf', 'hira.yousuf@example.com', 56000);
-- Add new column designation in already exist table employee
ALTER TABLE Employee
ADD COLUMN designation VARCHAR(100);
update the new column (designation) in existing records
-- Update designation for one specific employee
UPDATE Employee SET designation = 'Database Developer' WHERE id = 16;

-- Creates the database hr_system
CREATE DATABASE hr_system;

-- Connects to the hr_system database
\c hr_system;

-- see the current DB you're connected
\c

-- List all tables in current database
\dt

-- PostgreSQL treats unquoted names as lowercase,qouted as Uppercase.
-- table created with quotes, PSQL treats it as case-sensitive
DROP TABLE IF EXISTS "Employee";
DROP TABLE IF EXISTS employee;

-- Drop table,(if other table use refrence, use CASCADE)
DROP TABLE employee CASCADE;

-- Create table with columns and data types
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,   -- Automatically increments for each new employee
    first_name VARCHAR(50) NOT NULL,  
    last_name VARCHAR(50) NOT NULL,   
    hire_date DATE NOT NULL,          
    salary INT NOT NULL    

-- Creates department table
CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,   -- Unique identifier for each department
    department_name VARCHAR(100) NOT NULL
);

-- Creates position table
CREATE TABLE position (
    position_id SERIAL PRIMARY KEY,     
    position_name VARCHAR(100) NOT NULL 
);

-- Creates attendance table
CREATE TABLE attendance (
    attendance_id SERIAL PRIMARY KEY,           
    employee_id INT REFERENCES employee(employee_id), -- Foreign key referencing employee
    attendance_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Present'              -- Attendance status
);

-- Creates leaves table
CREATE TABLE leave ();  -- Empty table

-- Renames the table from leave to leaves
ALTER TABLE leave RENAME TO leaves;

