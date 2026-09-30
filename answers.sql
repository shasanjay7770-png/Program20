SET SERVEROUTPUT ON;

-- Create Employee table
CREATE TABLE Employee (
    EmpID NUMBER(5),
    EmpName VARCHAR2(20),
    DeptID NUMBER(5)
);

-- Create trigger
CREATE OR REPLACE TRIGGER trg_employee_insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New employee record inserted successfully.');
END;
/

-- Test insert
INSERT INTO Employee VALUES (101, 'Arun', 10);
/
