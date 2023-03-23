-- Create the schema

  -- Create Department table
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
  dept_no INT PRIMARY KEY,
  dept_name VARCHAR(40) NOT NULL
);

  -- Create Employee table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  dept_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Seed the database

  -- Seed Departments
INSERT INTO departments VALUES 
(1, 'Engineering'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Human Resources'),
(5, 'Finance'),
(6, 'Legal'),
(7, 'Product Management'),
(8, 'Customer Service'),
(9, 'Research'),
(10, 'Quality Assurance');

-- Seed Employees
INSERT INTO employees VALUES 
(1, 'John', 'Smith', 1),
(2, 'Jane', 'Doe', 1),
(3, 'Bob', 'Jones', 2),
(4, 'Sally', 'Smith', 2),
(5, 'Sue', 'Johnson', 3),
(6, 'Joe', 'Williams', 3),
(7, 'Bill', 'Brown', 4),
(8, 'Mary', 'Miller', 4),
(9, 'Tom', 'Davis', 5),
(10, 'Jane', 'Wilson', 5),
(11, 'Jack', 'Moore', 6),
(12, 'Jill', 'Taylor', 6),
(13, 'Adam', 'Anderson', 7),
(14, 'Sarah', 'Thomas', 7),
(15, 'Alex', 'Jackson', 8),
(16, 'Kate', 'White', 8),
(17, 'Dave', 'Harris', 9),
(18, 'Nancy', 'Martin', 9),
(19, 'Greg', 'Thompson', 10),
(20, 'Carol', 'Garcia', 10);
