CREATE DATABASE if not exists scottdb;
USE scottdb;

DROP TABLE if exists EMP;
DROP TABLE if exists DEPT;
DROP TABLE if exists BONUS;
DROP TABLE if exists SALGRADE;
DROP TABLE if exists DUMMY;

-- DROP DATABASE if exists scottdb;
-- create DATABASE scottdb;
-- USE scootdb;

CREATE TABLE DEPT(
    DEPTNO INT(2),
    DNAME VARCHAR(14),
    LOC VARCHAR(13) 
);

ALTER TABLE DEPT
ADD (CONSTRAINT PK_DEPT PRIMARY KEY (DEPTNO));

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');


CREATE TABLE EMP(
    EMPNO INT(4) NOT NULL,
    ENAME VARCHAR(10),
    JOB VARCHAR(9),
    MGR INT(4),
    HIREDATE DATE,
    SAL DECIMAL(7, 2),
    COMM DECIMAL(7, 2),
    DEPTNO INT(2)
);

ALTER TABLE EMP
ADD (CONSTRAINT PK_EMP PRIMARY KEY (EMPNO));


ALTER TABLE EMP
ADD (CONSTRAINT FK_DEPTNO FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO));
INSERT INTO EMP VALUES
    (7369, 'SMITH',  'CLERK',     7902, date_format('1980-12-17', '%Y%m%d'),  800, NULL, 20),
    (7499, 'ALLEN',  'SALESMAN',  7698, date_format('1981-02-20', '%Y%m%d'), 1600,  300, 30),
    (7521, 'WARD',   'SALESMAN',  7698, date_format('1981-02-22', '%Y%m%d'), 1250,  500, 30),
    (7566, 'JONES',  'MANAGER',   7839, date_format('1981-04-02', '%Y%m%d'),  2975, NULL, 20),
    (7654, 'MARTIN', 'SALESMAN',  7698, date_format('1981-09-28', '%Y%m%d'), 1250, 1400, 30),
    (7698, 'BLAKE',  'MANAGER',   7839, date_format('1981-05-01', '%Y%m%d'),  2850, NULL, 30),
    (7782, 'CLARK',  'MANAGER',   7839, date_format('1981-06-09', '%Y%m%d'),  2450, NULL, 10),
    (7788, 'SCOTT',  'ANALYST',   7566, date_format('1982-12-09', '%Y%m%d'), 3000, NULL, 20),
    (7839, 'KING',   'PRESIDENT', NULL, date_format('1981-11-17', '%Y%m%d'), 5000, NULL, 10),
    (7844, 'TURNER', 'SALESMAN',  7698, date_format('1981-09-08', '%Y%m%d'),  1500,    0, 30),
    (7876, 'ADAMS',  'CLERK',     7788, date_format('1983-01-12', '%Y%m%d'), 1100, NULL, 20),
    (7900, 'JAMES',  'CLERK',     7698, date_format('1981-12-03', '%Y%m%d'),   950, NULL, 30),
    (7902, 'FORD',   'ANALYST',   7566, date_format('1981-12-03', '%Y%m%d'),  3000, NULL, 20),
    (7934, 'MILLER', 'CLERK',     7782, date_format('1982-01-23', '%Y%m%d'), 1300, NULL, 10);

CREATE TABLE BONUS(
    ENAME VARCHAR(10),
    JOB   VARCHAR(9),
    SAL   INT,
    COMM  INT
);

CREATE TABLE SALGRADE(
    GRADE INT,
    LOSAL INT,
    HISAL INT
);

INSERT INTO SALGRADE VALUES
    (1,  700, 1200),
    (2, 1201, 1400),
    (3, 1401, 2000),
    (4, 2001, 3000),
    (5, 3001, 9999);

COMMIT;

