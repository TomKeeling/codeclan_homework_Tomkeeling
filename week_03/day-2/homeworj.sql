-- Question 1.
---(a). Find the first name, last name and team name of employees who are members of teams. 


SELECT 
first_name,
last_name,
t.name
FROM employees AS e
INNER JOIN teams AS t 
ON t.id = e.team_id


--(b). Find the first name, last name and team name of employees 
--who are members of teams and are enrolled in the pension scheme.

SELECT 
first_name,
last_name,
t.name
FROM employees AS e
INNER JOIN teams AS t 
ON t.id = e.team_id
WHERE pension_enrol = TRUE

--(c). Find the first name, last name and team name of employees who ARE
--members of teams, where their team has a charge cost greater than 80. 

SELECT 
first_name,
last_name,
name
FROM employees AS e
INNER JOIN teams AS t 
ON t.id = e.team_id
WHERE CAST(charge_cost AS int) > 80


--(a). Get a table of all employees details, together with their local_account_no 
-- and local_sort_code, if they have them.

SELECT 
first_name ,
last_name,
local_account_no,
local_sort_code 
FROM employees AS e
INNER JOIN pay_details AS p 
ON e.id = p.id


--(b). Amend your query above to also return the name of the team that each employee belongs to. 
SELECT 
name,
first_name ,
last_name,
local_account_no,
local_sort_code 
FROM employees AS e
INNER JOIN pay_details AS p 
ON e.id = p.id
LEFT JOIN teams AS t 
ON e.team_id = t.id

/*
 * where to use having and where to use where.
 * 
 */

SELECT 
    country,
    avg(salary) AS avg_salary,
    min(salary) AS min_salary
FROM employees
GROUP BY country 
HAVING avg(salary) <30000 AND min(salary) > 1000


