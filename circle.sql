CREATE OR REPLACE FUNCTION circle_area(radius NUMBER)
RETURN NUMBER IS
  area NUMBER;
BEGIN
  area := 3.14159 * POWER(radius, 2); 
  RETURN area;
END;
/
