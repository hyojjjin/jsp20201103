SELECT commission, nvl(commission, 0) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;
SELECT COUNT (*) FROM employee; -- 테이블에 데이터가 몇개인지


--p144 ~ 145
SELECT SUM(salary) as "급여 총액",
        AVG(salary) as "급여 평균",
        
        
--p146 ~ 147
SELECT COUNT(*) as "사원의 수" FROM employee;

SELECT COUNT(commission) as "커미션을 받는 사원의 수" FROM employee;

SELECT COUNT(distinct job) as "직업 종류의 개수" FROM employee;
    
