SELECT ABS(-15) AS result;  -- Output: 15

SELECT ROUND(4.567321423454, 1) AS result;  -- Output: 4.56
SELECT ROUND(4.567) AS result;     -- Output: 5


SELECT CEIL(4.2) AS result;    -- Output: 5
SELECT CEILING(4.8) AS result; -- Output: 5


SELECT FLOOR(4.8) AS result;   -- Output: 4


SELECT POWER(2, 3) AS result;  -- Output: 8
SELECT POW(5, 2) AS result;    -- Output: 25


SELECT MOD(10, 3) AS result;   -- Output: 1
SELECT 10 % 3 AS result;       -- using % result also output: 1


SELECT GREATEST(10, 20, 15) AS result;  -- Output: 20


SELECT LEAST(10, 20, 15) AS result;     -- Output: 10


SELECT TRUNCATE(4.567, 2) result;   -- Output: 4.56


SELECT CEIL((RAND(100)*10)) random_number; -- give a random number


SELECT SQRT(16) AS root; -- output:4

