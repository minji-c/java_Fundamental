#emp 테이블에서 사원번호, 사원이름, 직업을 출력
SELECT empno, ename, job
FROM emp;

#emp 테이블에서 사원번호,급여,부서번호를 출력하세요. 
#단, 급여가 많은 순서대로 출력
SELECT empno, sal, deptno
FROM emp
ORDER BY sal DESC;

#emp 테이블 에서 사원번호,급여,입사일을 출력. 
#단,급여가 적은 순서대로.
SELECT empno, sal, hiredate
FROM emp
ORDER BY sal;

#emp 테이블에서 직업,급여를 출력. 
#단,직업명으로 오름차순, 급여로 내림차순 정렬해서
SELECT job, sal
FROM emp
ORDER BY job ASC, sal DESC;

#emp 테이블에서 empno는 사원번호로 ename 사원이름으로
#컬럼정보를 바꿔서 출력하시오.
#AS 와 큰따옴표 " 는 생략가능 하다(공백문자가 있으면 안됨 => 사원 번호) 
SELECT empno AS "사원번호", ename AS "사원이름" 
FROM emp;

SELECT empno 사원번호, ename 사원이름 
FROM emp;

SELECT empno "사원 번호", ename "사원 이름"
FROM emp;

#emp 테이블에서 부서번호가 10 번인 사원들의 급여와 
#10% 인상된 금액 같이 출력
SELECT sal, sal*1.1
FROM emp
WHERE deptno=10;

#emp 테이블에서 부서번호가 10 번인 사원들의 부서번호와
급여와 급여+커미션 출력
SELECT deptno, sal, sal+ifnull(comm,0)
FROM emp
WHERE deptno=10;

#emp 테이블에서 급여가 3000 이상인 사원들의 모든 정보를 출력.
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno
FROM emp
WHERE sal>=3000;

#emp 테이블에서 부서번호가 30번이 아닌 사람들의 이름과 부서번호를 출력.
select ename, deptno
FROM emp
WHERE deptno!=30;

#emp 테이블에서 부서번호가 10번이고 급여가 3000 이상인 
#사원들의 이름과 급여를 출력.
SELECT ename, sal
FROM emp
WHERE deptno=10 AND sal>=3000;

#emp 테이블에서 직업이 SALESMAN 이거나 MANAGER 인 
#사원의 사원번호와 부서번호를 출력. 
SELECT empno,deptno, job
FROM emp
WHERE job='salesman' OR job='manager';

SELECT empno, deptno, job
FROM emp
WHERE job != 'clerk' AND job != 'analyst' AND job != 'president';

#부서번호가 10번이거나 20번인 사원의
#사원번호와 이름, 부서번호 출력.

SELECT empno, ename, deptno
FROM emp
WHERE deptno= 10 OR deptno= 20; 

SELECT ename,deptno
FROM emp
WHERE deptno IN (10,20);

SELECT ename, deptno
FROM emp
WHERE deptno != 30;

#급여가 1000 과 2000 사이인 사원들의 
사원번호,이름,급여를 출력. 

SELECT empno, ename, sal
FROM emp
WHERE sal >= 1000 AND sal <= 2000;

SELECT empno, ename, sal
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

#사원이름이 'FORD' 와 'SCOTT' 사이의 사원들의 사원번호,이름을 출력. 

SELECT empno, ename
FROM emp
WHERE ename => 'ford' AND ename <= 'scott'
ORDER BY ename ASC;

 
#사원이름이 J 로 시작하는 사원의 사원이름과 부서번호를 출력하기.
SELECT ename, deptno
FROM emp
WHERE ename LIKE '%J';

#사원이름이 J 를 포함하는 사원의 사원이름과 부서번호를 출력하기.
SELECT ename, deptno
FROM emp
WHERE ename LIKE '%J%';

#사원이름의 두번째글자가 A인 사원의 이름,급여,입사일을 출력하기.
SELECT ename, sal, hiredate
FROM emp
WHERE ename LIKE '_A%';

#사원이름이 ES로 끝나는 사원의 이름, 급여, 입사일을 출력하기.
SELECT ename, sal, hiredate
FROM emp
WHERE ename LIKE '%ES';

#입사년도가 81년인 사원들의 입사일과 사원번호를 출력하기.
select ename, hiredate, empno
from emp
where hiredate LIKE '1981%';

#커미션이 null인 사원의 사원이름과 커미션을 출력.
SELECT ename, comm
FROM emp
WHERE comm IS NULL;

#커미션이 null이 아닌 사원의 사원이름과 커미션을 출력.
SELECT ename, comm
FROM emp
WHERE comm IS NOT NULL;

SELECT CONCAT(ename,'그의 직업은','입니다') 
FROM emp;

SELECT CHAR(97);

SELECT CONCAT(ename,'him') NAME
FROM emp;

SELECT LOWER(ename)
FROM emp;

SELECT UPPER(ename)
FROM emp;

SELECT LPAD('123', 10, '0');

SELECT RPAD('123', 10, '0');

#length: 영문일때 1, 한글 3byte
SELECT LENGTH('스미쓰');

SELECT ename, LEFT(ename,3)
FROM emp;

SELECT ename
FROM emp;


#####
SELECT ename, rpad(LEFT(ename,3),LENGTH(NAME),'*')
FROM emp;


SELECT ename, RIGHT(ename,3)
FROM emp;

SELECT ename, LPAD(RIGHT(ename,3),LENGTH(ename),'*')
FROM emp;

SELECT ename, SUBSTRING(ename, 3, 3)
FROM emp;

SELECT FORMAT(123456.34355,2);


#SELECT ename, NVL(comm,0) FROM emp;

SELECT ename, IFNULL(comm,o) 
FROM emp;

SELECT ABS(-10);

SELECT CEIL(3.1234);

SELECT FLOOR(3.2241);

SELECT ROUND(3.22645,2);



SELECT ROUND(4.1,2);
SELECT ROUND(4.15,2);


SELECT TRUNCATE(123123.123567,3);

SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
SELECT ADDDATE(NOW(),INTERVAL 2 DAY);
SELECT SUBDATE(NOW(),INTERVAL 2 hour);

SELECT DATEDIFF('2020-05-29','2020-05-16');
SELECT TIMESTAMPDIFF(HOUR,'2018-03-01','2018-03-28');



SELECT CONCAT(ename, '님') 
FROM emp;


CREATE TABLE test(
id VARCHAR(50) PRIMARY KEY,
sdate DATETIME;
edate DATETIME;
);

INSERT INTO test(id, sdate, edate)
VALUES('syh1011',NOW()),ADDDATE(NOW(), INTERVAL 2 DAY));

INSERT INTO test(id, sdate, edate)
VALUES('syh2022',NOW()),ADDDATE(NOW(), INTERVAL 20 DAY));

INSERT INTO test(id, sdate, edate)
VALUES('syh3033',NOW()),ADDDATE(NOW(), INTERVAL 40 DAY));

INSERT INTO test(id, sdate, edate)
VALUES('syh4044',NOW()),ADDDATE(NOW(), INTERVAL 40 hours));

SELECT id, sdate, edate
FROM test;

SELECT NOW(), SUBDATE(NOW(), INTERVAL 2 HOUR);

SELECT DATEDIFF('2020-05-29','2020-05-21');

SELECT id, DATEDIFF(edate, sdate) diff
FROM test;

SELECT id, TIMESTAMPDIFF(HOUR, sdate, edate)
FROM test;

SELECT id, DATE_FORMAT(sdate, '%y/%m/%d') sdate, edate
DATE_FORMAT(edate, '%Y/%m/%d %h:%i:%s') edate
FROM test;
 













