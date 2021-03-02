--1
SELECT ename, job
FROM employee
WHERE job = (SELECT job FROM employee WHERE eno = 7788);

사원번호가 7788
담당업무가 같은 사원 표시

--2
SELECT ename, job
FROM employee
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

사원번호 7499
급여가 더 많은 사원의
사원이름, 담당업무


--3
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

그룹함수 사용
최소 급여를 받는
사원 이름, 담당업무 급여

--4
SELECT job, ROUND(avg(salary), 1)
FROM employee
GROUP BY job
having round(avg(salary), 1) = (SELECT MIN(avg(salary)) FROM employee group by job);
??

평균 급여가 가장 작은 사원의
담당 업무의
직급, 평균 급여

--5
SELECT ename, salary, dno
FROM employee
WHERE salary IN (SELECT MIN(salary) FROM employee group by dno);


각부서의 최소 급여를 받는 
사원의 이름, 급여, 부서 번호