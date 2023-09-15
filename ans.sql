SET SERVEROUTPUT ON;
DECLARE
    CURSOR employee_cursor IS
    SELECT e.last_name, d.department_name, e.salary
    FROM employees e
    JOIN departments d ON e.department_id = d.department_id;

    v_last_name employees.last_name%TYPE;
    v_department_name departments.department_name%TYPE;
    v_salary employees.salary%TYPE;

    BEGIN
    OPEN employee_cursor;
    LOOP
        FETCH employee_cursor INTO v_last_name, v_department_name, v_salary;
        EXIT WHEN employee_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Last Name: ' || v_last_name || ', Department Name: ' || v_department_name || ', Annual Salary: ' || 12*v_salary);
    END LOOP;
    CLOSE employee_cursor;
END;
/
