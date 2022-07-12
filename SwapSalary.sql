-- Table: Salary

-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | id          | int      |
-- | name        | varchar  |
-- | sex         | ENUM     |
-- | salary      | int      |
-- +-------------+----------+
-- id is the primary key for this table.
-- The sex column is ENUM value of type ('m', 'f').
-- The table contains information about an employee.
 

-- Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.

-- Note that you must write a single update statement, do not write any select statement for this problem.

-- The query result format is in the following example.

 

-- Example 1:

-- Input: 
-- Salary table:
-- +----+------+-----+--------+
-- | id | name | sex | salary |
-- +----+------+-----+--------+
-- | 1  | A    | m   | 2500   |
-- | 2  | B    | f   | 1500   |
-- | 3  | C    | m   | 5500   |
-- | 4  | D    | f   | 500    |
-- +----+------+-----+--------+
-- Output: 
-- +----+------+-----+--------+
-- | id | name | sex | salary |
-- +----+------+-----+--------+
-- | 1  | A    | f   | 2500   |
-- | 2  | B    | m   | 1500   |
-- | 3  | C    | f   | 5500   |
-- | 4  | D    | m   | 500    |
-- +----+------+-----+--------+
-- Explanation: 
-- (1, A) and (3, C) were changed from 'm' to 'f'.
-- -- (2, B) and (4, D) were changed from 'f' to 'm'.

--M1
update Salary
set sex= if(sex='m','f','m');

--M2
update Salary
set sex= (case when sex='m' then 'f'
              else 'm' end);

--M3 using replace
REPLACE(string, old_string, new_string)
update Salary 
set sex= REPLACE('fm', sex, '');

ex:
string='fm'
row01='f'. So sex='f'. Now we'll find 'f' in 'fm' and will replace it with ''. So, the result is 'm'
row02='m'. So sex='m'. Now we'll find 'm' in 'fm' and will replace it with ''. So, the result is 'f'
And so on