# 자바 풀스택 2일차

## 데이터베이스와 SQL 개요

- **DataBase**: 공유, 실시간 변경, 무결성, 보안 등
- **RDBMS**: MySQL, Oracle, DB2, MS-SQL
- **SQL**: ANSI 표준 언어로 RDBMS 접근 사용을 위한 표준 언어
---
## 데이터베이스의 데이터 접근 및 사용

1. **SDLC (소프트웨어 개발 생명 주기) 분석 및 설계**
    - **업무 대상 추출**: 엔티티, 도메인
        - 해당 업무(프로세스)에서 관리해야 하는 대상 객체 추출
    - **속성 추출**: 컬럼, 속성
        - 도메인 구성하는 속성들 추출
    - **데이터 분석**: 타입, 길이, 제약조건

2. **테이블 구조**
    - 🍩데이터를 저장하기 위한 물리적인 구조(틀) : 테이블
    - 🍩컬럼(필드)과 여러 행(레코드)으로 구성
---
## SQL(Structed Query Language)의 주요 기능
- **SQL** : 데이터를 접근 사용하기 위한 표준 언어
- 🍖**CRUD**: Create, Retrieve, Update, Delete
- **트랜잭션 관리** : 반영, 원상복구
- **사용자 및 권한 관리** : 생성, 권한 부여, 권한 회수 등
---
## SQL 종류 (구분)

- **🍖DDL (Data Definition Language)**
  - 테이블, 인덱스, 뷰, 시퀀스 등 생성/변경/삭제 (CREATE, ALTER, DROP) 
- **🍖DML (Data Manipulation Language)**
  - 레코드 조작 (INSERT, UPDATE, DELETE, SELECT)
  - DQL (Data Query Language)로 SELECT 분리 가능
- **🍖TCL (Transaction Control Language)**
  - 트랜잭션 제어 (COMMIT, ROLLBACK, SAVEPOINT)
- **🍖DCL (Data Control Language)**
  - 데이터베이스 운영 제어
  - 권한 부여/제거 (GRANT, REVOKE)
---
## SQL 식별자 규칙

- 대상 : 테이블명/ 컬럼명/ 제약명/ 인덱스명, 뷰 등
- 🍖**영문자 시작, 숫자/밑줄/달러 조합**
- 길이 제한: 최대 64자 (🥑**권장 30자**)
- 대소문자 구분 없음 (값 비교 시 구분)
- 한글 사용 가능 (비권장), 특수문자 가능 (비권장)
- 예약어 및 공백 사용 불가
---
## SELECT 문의 기본 형식

1. 🍩**기본 형식**
   - 1. `SELECT * | [DISTINCT] 컬럼명 [AS 별칭] | 수식 | 함수 | 서브쿼리 FROM 테이블명 [AS 별칭]`
   - 2. `SELECT 조회항목 : from 구문 생략 가능(단, mysql만 가능)`
   - 3. `SELECT 조회항목 from DUAL : 테이블 없는 조회시에 더미테이블 사용`

2. 🍩**전체 형식**
   -  `SELECT ~조회대상`<br>
      `FROM ~테이블`<br> 
      `WHERE ~condition`<br> 
      `GROUP BY ~그룹핑대상컬럼`<br>
      `HAVING ~그룹핑conditions`<br>
      `ORDER BY ~정렬-columns [ASC | DESC]`

> 🥑 빽틱(`) : 예약어를 사용자가 식별자로 사용하는 경우 빽틱으로 지정 사용
---
## 정렬 조회

- **정렬 방법**: ASC (기본), DESC
- **정렬 기준**: 컬럼명, 별칭, SELECT 항목의 순서

  >🥑 **정렬예시**<br><br>
  > 문자 &emsp;&emsp;&emsp;: a,b ... 가, 나, 다 .. 하<br>
  > 숫자, 날짜&emsp;: 0,1,2,3 ...<br>
  > 급여가 높은 순서&emsp;: 내림<br>
  > 급여가 작은 순서&emsp;: 올림<br>
  > 장기근속&emsp;: 2000, 2001, ..., 2024(올림)<br>
  > 최신 입사한 지원순서&emsp;: 2024, 2023, 2022 (내림)
---
## 연산자
- 연산자 기능 : 수식을 계산 하는 기능
- **사칙연산자**: +, -, *, /, MOD()
- **비교연산자**: =, !=, <>, <, >, <=, >=
- **논리연산자**: NOT, AND, OR