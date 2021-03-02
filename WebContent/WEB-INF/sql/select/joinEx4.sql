SELECT e1.eno, e1.manager, e2.eno
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT e1.eno, e1.manager, e2.eno
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;

SELECT * FROM employee;