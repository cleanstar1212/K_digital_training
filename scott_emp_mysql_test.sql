-- scott 계정, scottdb database

use scottdb;
select user();
-- scottdb
select database();
-- dept, emp, salgrade, bonus

show tables;

/* select 기본 형식
	select * | [DISTINCT] 조회컬럼명1 ("Column alias" or"column-alias"), 컬럼명x |수식|
    from table-name
    where 컬럼명 조건연산자 비교값 [and | or] 
    ;
*/

-- scottdb : 회사의 부서와 직원들의 정보가 모델링된 데이터베이스
-- 구조를 조회해서 컬럼명, 순서대로 기술해주세요
-- 부서 테이브 구조 조회 : deptno(부서번호 PK), dname(부서명), loc(부서위치)
-- 직원 테이브 구조 조회 : EMPNO(사번 PK), ENAME(직원명), JOB(직업), MGR(상사사번), HIREDATE(입사일), SAL(급여), COMM(수당), DEPTNO(부서번호)
desc emp;

/* 문제 1:  
	test_db 데이터베이스를 생성하시오.
	단, character set은 utf8, collation은 대소문자 구분하도록 설정 생성하시오.
*/
create database test_db character set utf8 collate utf8_bin;

/* 문제 2:  
	test_db 데이터베이스의 생성시 작성된 SQL 구문을 조회하시오.
*/
show create database test_db;

/* 문제 3:  
	test_db 데이터베이스 계정을 사용하도록 설정하시오. 
*/
use test_db;

/* 문제 4:  
	mysql 실행하여 콘솔모드를 이용해서 test_db_schema.sql 스크립트를 수행하시오.
	
	단, test_db_schema.sql 파일에 데이터베이스는 'test_db'로 설정한 후에
	수행하시오.
*/


/* 문제 5:  
	명령프롬프트에서 mysql을 이용하여 test_db_schema.sql 스크립트를 수행하시오.

	단, test_db_schema.sql 파일에 데이터베이스는 'test_db'로 설정한 후에
	수행하시오.
*/




/* 문제 6:  
	현재 사용하고 있는 데이터베이스를 조회하시오.
	단, 사용하고 있는 데이터베이스가 설정되어 있지 않으면
	부서(dept), 직원(emp) 테이블을 갖는 데이터베이스(test_db)를 사용하도록 설정하시오.
*/
use test_db;


/* 문제 7:  
	부서(dept) 테이블의 구조를 조회하시오.
*/


/* 문제 8:  
	전체부서의 모든 정보를 조회하시오.
*/


/* 문제 9:  
	전체부서의 부서번호, 부서명 정보를 조회하시오.
*/


/* 문제 10:  
	직원(emp) 테이블의 구조를 조회하시오.s
*/


/* 문제 11:  
	전체직원의 모든 정보를 조회하시오.
*/


-- 우리회사 전체부서의 정보를 스키마 구조대로 조회하시오.
select * from dept;

-- 우리회사 전체부서의 부서명, 부서번호만을 조회하시오.
select DNAME, DEPTNO from dept;

-- 우리회사 전체부서의 모든정보를 조회하시오.
-- 단, 별칭을 이용해서 제목을 출력하시오.
-- 부서 번호, 부서명, 부서 위치
-- sql 표준 : 
-- "alias-name-대소문자구분-공백-특수문자"
-- '문자데이터', '날짜데이터'
select deptno "부서 번호", dname 부서명, loc "부서 위치" from dept;
select deptno "부서 번호", dname 부서명, loc '부서 위치' from dept;
select deptno as "부서 번호", dname as 부서명, loc as '부서 위치' from dept; 

-- 우리회사의 10번 부서의 모든 정보를 조회하시오.
SELECT * FROM dept WHERE deptno = 10;

-- 우리회사의 10번, 20번 부서의 모든 정보를 조회하시오.
SELECT * FROM dept WHERE deptno = 10 or deptno = 20;

-- 부서의 위치가 DALLAS이면서 부서번호가 10번인 부서의 정보를 조회하시오
SELECT * FROM dept WHERE deptno = 10 and loc = "DALLAS";
-- SQL 표준 : 값의 비교시에 대소문자를 구분함!!
-- mysql : 값의 비교시에 대소문자 구분하지 않음(주의할것!!)
SELECT * FROM dept WHERE deptno = 20 and loc = "dallas";

-- 직원(emp) 테이블의 구조를 조회하시오.
desc emp;

-- 전체직원의 모든 정보를 조회하시오
select * from emp;

-- 전체 직원의 사번, 이름, 직무, 입사일, 부서번호 정보를 조회하시오
select empno, ename, job, hiredate, deptno from emp;

-- 전체직원의 사번, 이름, 직무, 급여, 수당 정보를 조회하시오.
-- 단, 조회시에 제목을 사번, 직원 이름, 담당 업무, 급여, 수당으로 별칭을 지정해 출력하시오.
-- 중복 제거 하고 싶으면 distinct 컬럼명1, 컬럼명2 ...
select empno "사번", ename "직원 이름", job "담당 업무", sal "급여", comm "수당" from emp; 

-- 우리회사 현재 직원들의 직무의 종류를 조회하시오.
-- 단, 직무명을 올림차순으로 정렬 조회하시오.
-- (사원들의 직무명을 중복을 제거후 직무명을 조회하시오.)
select distinct job from emp;

-- 우리회사 현재 각부서별로 직원들의 직무의 종류를 조회하시오.
-- 단, 부서번호, 직무명을 기준으로 올림차순으로 정렬 조회하시오.
-- 단, 조회시에 별칭을 사용하여 부서번호, 직무명으로 출력하시오.
-- (사원들의 부서번호, 직무명을 중복을 제거후 직무명을 조회하시오.)
select distinct deptno "부서번호", job "직무명" 
from emp 
order by deptno ASC, job ASC;

-- 사칙연산 수식
select 5 + 10, 5 - 10, 5 * 10, 5 / 10;
-- 이번에 회사가 휴가철 맞이해 특별 상여금을 지급하기로 결정했다.
-- 특별상여금 = 급여 + 수당
-- 직원의 정보 조회 : 사번, 급여, 급여+수당 정보를 조회하시오.
-- 단, 특별수당이 많은 순서대로 정렬 조회 하시오.
-- 특별수당 가장 많이 받은 직원이 오늘 저녁 회식값을 지불하기로 함.
-- null : 값을 알 수 없음. 연산의 대상이 되지 않는다.
select empno, sal, sal+comm from emp order by sal+comm desc;

-- 정렬조회
-- 함수를 이용해서 null이면 0으로 대체 가능
-- 정렬시에 별명도 가능한데, 별명 지정하는 형식에 따라 적용이 되지 않는 현상 발생
select empno, sal, sal + ifnull(comm, 0) from emp order by sal + ifnull(comm, 0);

-- 수식결과에 대한 alias 지정하면 정렬시에 alias로 지정 가능
select empno, sal, sal + ifnull(comm, 0) 특별상여금 from emp order by 특별상여금 desc;

-- 수식 등에 alias를 지정하지 않는 경우
-- select 항목들의 순서를 기준으로 지정 가능
-- 시작은 1번부터
-- 숫자 사용시에 가독성이 좋지않음
select empno, sal, sal + ifnull(comm, 0) "특별 상여금" from emp order by 1 desc;

select empno, sal, sal + ifnull(comm, 0) "특별 상여금" from emp order by "특별 상여금" desc;

/* 문제 15:  
	우리회사 현재 각부서별로 직원들의 직무의 종류를 조회하시오.
	단, 부서번호, 직무명을 기준으로 올림차순으로 정렬 조회하시오.
	단, 조회시에 별칭을 사용하여 부서번호, 직무명으로 출력하시오.
	(사원들의 부서번호, 직무명을 중복을 제거후 직무명을 조회하시오.)
*/
select distinct deptno "부서번호", job "직무명" 
from emp 
order by deptno ASC, job ASC;

/* 문제 16:  
	급여가 3000 이상인 사원정보를 출력하시오.
*/
select * from emp where sal >= 3000;

/* 문제 17:  
	이름이 'SMITH'인 사원의 정보 출력하시오.
*/
select * from emp where ename = "SMITH";

/* 문제 18:  
	부서번호가 10이고 그리고 직업이 'MANAGER'인 사원정보를 출력하시오.
*/
select * from emp where empno = 10 and job = "MANAGER";

/* 문제 19:  
	부서번호가 10이거나 또는 직업이 'MANAGER'인 사원정보를 출력하시오.
*/
select * from emp where empno = 10 or job = "MANAGER";

/* 문제 20:  
   이 문장에는 코딩 오류가 네 개 있습니다. 식별할 수 있습니까?

   SELECT empno, ename
          salary x 12  ANNUAL SALARY
   FROM   emp;
*/

-- ename 뒤에 ,가 없음
-- salary * 12임.
-- "ANNUAL SALARY" 가 맞음.
-- emp에 salary가 없음.

