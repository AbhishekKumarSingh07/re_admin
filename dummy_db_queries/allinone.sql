INSERT INTO Employees (first_name, last_name, contact_num) VALUES
('John', 'Doe', '1234567890'),
('Jane', 'Smith', '9876543210'),
('Michael', 'Johnson', '5678901234'),
('Emily', 'Brown', '3456789012'),
('David', 'Lee', '6789012345'),
('Sarah', 'Williams', '4567890123'),
('James', 'Jones', '8901234567'),
('Jennifer', 'Davis', '2345678901'),
('Robert', 'Wilson', '7890123456'),
('Mary', 'Taylor', '1237894560'),
('William', 'Moore', '8902345671'),
('Linda', 'Anderson', '5671238902'),
('Christopher', 'Martin', '2348901233'),
('Patricia', 'White', '8904567123'),
('Richard', 'Hall', '9012345678');

INSERT INTO Products (product_name, price, quantity, is_available, details, product_type) VALUES
('Product1', 10.99, 50, 1, 'Details for Product1', 1),
('Product2', 15.99, 30, 1, 'Details for Product2', 2),
('Product3', 12.99, 40, 1, 'Details for Product3', 3),
('Product4', 8.99, 60, 1, 'Details for Product4', 4),
('Product5', 25.99, 20, 1, 'Details for Product5', 5),
('Product6', 14.99, 35, 1, 'Details for Product6', 6),
('Product7', 18.99, 25, 1, 'Details for Product7', 7),
('Product8', 22.99, 45, 1, 'Details for Product8', 8),
('Product9', 9.99, 55, 1, 'Details for Product9', 9),
('Product10', 19.99, 15, 1, 'Details for Product10', 10),
('Product11', 11.99, 70, 1, 'Details for Product11', 11),
('Product12', 16.99, 28, 1, 'Details for Product12', 12),
('Product13', 27.99, 22, 1, 'Details for Product13', 13),
('Product14', 13.99, 33, 1, 'Details for Product14', 14),
('Product15', 21.99, 38, 1, 'Details for Product15', 15);
INSERT INTO Tasks (task_code, task_name, task_details, location, date_assigned) VALUES
('Task1', 'Task Name 1', 'Details for Task 1', 'Location 1', '2023-10-09 12:00:00'),
('Task2', 'Task Name 2', 'Details for Task 2', 'Location 2', '2023-10-10 14:00:00'),
('Task3', 'Task Name 3', 'Details for Task 3', 'Location 3', '2023-10-11 15:30:00'),
('Task4', 'Task Name 4', 'Details for Task 4', 'Location 4', '2023-10-12 10:15:00'),
('Task5', 'Task Name 5', 'Details for Task 5', 'Location 5', '2023-10-13 08:45:00'),
('Task6', 'Task Name 6', 'Details for Task 6', 'Location 6', '2023-10-14 16:20:00'),
('Task7', 'Task Name 7', 'Details for Task 7', 'Location 7', '2023-10-15 13:10:00'),
('Task8', 'Task Name 8', 'Details for Task 8', 'Location 8', '2023-10-16 11:30:00'),
('Task9', 'Task Name 9', 'Details for Task 9', 'Location 9', '2023-10-17 09:00:00'),
('Task10', 'Task Name 10', 'Details for Task 10', 'Location 10', '2023-10-18 17:45:00'),
('Task11', 'Task Name 11', 'Details for Task 11', 'Location 11', '2023-10-19 14:30:00'),
('Task12', 'Task Name 12', 'Details for Task 12', 'Location 12', '2023-10-20 12:20:00'),
('Task13', 'Task Name 13', 'Details for Task 13', 'Location 13', '2023-10-21 10:10:00'),
('Task14', 'Task Name 14', 'Details for Task 14', 'Location 14', '2023-10-22 15:15:00'),
('Task15', 'Task Name 15', 'Details for Task 15', 'Location 15', '2023-10-23 16:40:00');

-- Insert associations between tasks, employees, and products here (if needed).

INSERT INTO Types (product_type) VALUES
('Type1'),
('Type2'),
('Type3'),
('Type4'),
('Type5'),
('Type6'),
('Type7'),
('Type8'),
('Type9'),
('Type10'),
('Type11'),
('Type12'),
('Type13'),
('Type14'),
('Type15');
-- Task 1 with Employees 1 and 2
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(1, 1),
(1, 2);

-- Task 2 with Employees 3 and 4
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(2, 3),
(2, 4);

-- Task 3 with Employees 5 and 6
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(3, 5),
(3, 6);

-- Task 4 with Employees 7 and 8
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(4, 7),
(4, 8);

-- Task 5 with Employees 9 and 10
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(5, 9),
(5, 10);

-- Task 6 with Employees 11 and 12
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(6, 11),
(6, 12);

-- Task 7 with Employees 13 and 14
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(7, 13),
(7, 14);

-- Task 8 with Employees 15 and 1
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(8, 15),
(8, 1);

-- Task 9 with Employees 2 and 3
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(9, 2),
(9, 3);

-- Task 10 with Employees 4 and 5
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(10, 4),
(10, 5);

-- Task 11 with Employees 6 and 7
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(11, 6),
(11, 7);

-- Task 12 with Employees 8 and 9
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(12, 8),
(12, 9);

-- Task 13 with Employees 10 and 11
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(13, 10),
(13, 11);

-- Task 14 with Employees 12 and 13
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(14, 12),
(14, 13);

-- Task 15 with Employees 14 and 15
INSERT INTO task_employee_association (task_id, employee_id) VALUES
(15, 14),
(15, 15);

-- Task 1 with Products 1 and 2
INSERT INTO task_product_association (task_id, product_id) VALUES
(1, 1),
(1, 2);

-- Task 2 with Products 3 and 4
INSERT INTO task_product_association (task_id, product_id) VALUES
(2, 3),
(2, 4);

-- Task 3 with Products 5 and 6
INSERT INTO task_product_association (task_id, product_id) VALUES
(3, 5),
(3, 6);

-- Task 4 with Products 7 and 8
INSERT INTO task_product_association (task_id, product_id) VALUES
(4, 7),
(4, 8);

-- Task 5 with Products 9 and 10
INSERT INTO task_product_association (task_id, product_id) VALUES
(5, 9),
(5, 10);

-- Task 6 with Products 11 and 12
INSERT INTO task_product_association (task_id, product_id) VALUES
(6, 11),
(6, 12);

-- Task 7 with Products 13 and 14
INSERT INTO task_product_association (task_id, product_id) VALUES
(7, 13),
(7, 14);

-- Task 8 with Products 14 and 15
INSERT INTO task_product_association (task_id, product_id) VALUES
(8, 14),
(8, 15);

-- Task 9 with Products 1 and 3
INSERT INTO task_product_association (task_id, product_id) VALUES
(9, 1),
(9, 3);

-- Task 10 with Products 5 and 7
INSERT INTO task_product_association (task_id, product_id) VALUES
(10, 5),
(10, 7);

-- Task 11 with Products 9 and 11
INSERT INTO task_product_association (task_id, product_id) VALUES
(11, 9),
(11, 11);

-- Task 12 with Products 13 and 2
INSERT INTO task_product_association (task_id, product_id) VALUES
(12, 13),
(12, 2);

-- Task 13 with Products 6 and 8
INSERT INTO task_product_association (task_id, product_id) VALUES
(13, 6),
(13, 8);

-- Task 14 with Products 10 and 12
INSERT INTO task_product_association (task_id, product_id) VALUES
(14, 10),
(14, 12);

-- Task 15 with Products 14 and 1
INSERT INTO task_product_association (task_id, product_id) VALUES
(15, 14),
(15, 1);
