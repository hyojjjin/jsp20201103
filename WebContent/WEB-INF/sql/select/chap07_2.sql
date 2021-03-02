--chap07 혼자해보기
--1
/*
사원번호가 7788인 사원과
담당업무가 같은 사원의
이름, 업무
*/
SELECT ename, job FROM employee where job = (SELECT job FROM employee WHERE eno = 7788);


--2
/*
사원번호가 7499
사원보다 급여가 많은 사원의
이름, 업무
*/
SELECT ename, job FROM employee WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

--3
/*
최소 급여를 받는 사원의
이름, 담당 업무, 급여
그룹함수 사용
*/
SELECT ename, job, salary FROM employee WHERE salary = (SELECT MIN(salary) from employee);

--4
/*
평균 급여가 가장 적은 사원의
담당업무를 찾아서
직급과 평균 급여를 표시
*/
SELECT job, AVG(salary) FROM employee WHERE salary = (SELECT MIN(salary) FROM employee);
/*모르겠당

--5
/*
각 부서의 최소 급열르 받는 사원의
이름, 급여, 부서번호
*/
SELECT ename, salary, dno FROM employee WHERE salary in(SELECT MIN(salary) FROM employee group by dno);

--6
/*
담당업무가 분석가 (ANALYST)인 사원보다
급여가 작고, 업무가 분석가가 아닌 사람의
사원번호, 이름, 담당업무, 급여
*/
SELECT eno, ename, job, salary FROM employee WHERE job <> 'ANALYST' AND salary < any (SELECT salary FROM employee WHERE job = 'ANALYST');


--7
/*
부하직원이 없는 사원의
이름
*/
SELECT ename FROM employee WHERE eno in(SELECT eno FROM employee WHERE manager is null);


--8
/*
부하직원이 있는 사원의
이름
*/
