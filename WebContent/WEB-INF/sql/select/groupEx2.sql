SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT MAX(salary) FROM employee GROUP BY job;


--p149 ~ 151
SELECT dno as "부서 번호", avg(salary) as "급여 평균"
FROM employee group by dno;

SELECT avg(salary) as "급여 평균" FROM employee group by dno;

SELECT dno, job, count(*), sum(salary) FROM employee group by dno, job ORDER BY dno, job;

SELECT job, avg(salary)/

--그룹함수는 where에 불가

SELECT job, avg(salary) FROM employee
GROUP;


--p 152~ 153
SELECT dno, max(salary) from employee group by dno having max(salary) >= 3000;

SELECT job, count(*), sum(salary) FROM employee WHERE job NOT LIKE '%MANAGER%' GROUP BY job having sum(salary) >= 5000
order by sum(salary);

SELECT MAX(avg(salary)) FROM employee GROUP by dno;



