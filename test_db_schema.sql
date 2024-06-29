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