-- Create 'departments' table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- Insert sample data into 'departments' table
INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT');

-- Create 'employees' table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department_id INT,
    hire_date DATE DEFAULT '2024-03-11',
    salary DECIMAL(10, 2) CHECK (salary > 0),
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert sample data into 'employees' table
INSERT INTO employees(employee_id, first_name, last_name, email, department_id, salary) VALUES
(1, 'Aniket', 'Patil', 'aniket.patil@example.com', 3, 70000), 
(2, 'Vaibhav', 'Pimple', 'vaibhav.pimple@example.com', 1, 60000), 
(3, 'Ravi', '<mali', 'ravi.mali@example.com', 2, 75000); 
-- Select all columns from the 'employees' table
SELECT * FROM employees;

-- Select specific columns from the 'employees' table
SELECT employee_id, first_name, last_name FROM employees;

-- Select distinct values from the 'department_id' column in the 'employees' table
SELECT DISTINCT department_id FROM employees;

-- Combine results from two queries using UNION ALL
SELECT employee_id, first_name, last_name FROM employees
UNION ALL
SELECT employee_id, first_name, last_name FROM employees;

-- Combine results from two queries using UNION
SELECT employee_id, first_name, last_name FROM employees
UNION
SELECT employee_id, first_name, last_name FROM employees;

-- Combine results from two queries using EXCEPT
SELECT employee_id, first_name, last_name FROM employees
EXCEPT
SELECT employee_id, first_name, last_name FROM employees;

-- Combine results from two queries using INTERSECT
SELECT employee_id, first_name, last_name FROM employees
INTERSECT
SELECT employee_id, first_name, last_name FROM employees;
