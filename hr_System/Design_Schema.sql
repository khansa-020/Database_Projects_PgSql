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