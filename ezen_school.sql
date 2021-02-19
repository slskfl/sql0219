-- 데이터베이스 생성
create database ezen_school;
-- 데이터베이스 목록 조회
show databases;

-- 학생테이블 생성
use ezen_school;
create table students(
	std_num	CHAR(6)		PRIMARY KEY,
    name 	VARCHAR(20)	NOT NULL,
    birth 	DATE		NOT NULL,
    tel 	VARCHAR(20)	NOT NULL,
    address VARCHAR(100)NOT NULL,
    note 	VARCHAR(100)NOT NULL
);
use ezen_school;
desc students;

-- 학생정보 테이블 삭제
use ezen_school;
drop table students;

-- 학생테이블 생성
use ezen_school;
create table students(
	std_num	CHAR(6),
    name 	VARCHAR(20)	NOT NULL,
    birth 	DATE		NOT NULL,
    tel 	VARCHAR(20)	NOT NULL,
    address VARCHAR(100)NOT NULL,
    note 	VARCHAR(100)NOT NULL,
	PRIMARY KEY(std_num)
);
use ezen_school;
desc students;

-- 점수 테이블 생성
use ezen_school;
create table scores(
	std_num CHAR(6)		NOT NULL,
    kor 	INT 		NOT NULL,
    eng		INT			NOT NULL,
    math	INT 		NOT NULL
    CHECK (0<=kor AND kor<=100),
    CHECK (0<=eng AND eng<=100),
    CHECK (0<=math AND math<=100)
);
use ezen_school;
desc scores;

-- 점수 테이블 삭제
use ezen_school;
drop table scores;

-- 점수 테이블 생성
use ezen_school;
create table scores(
	std_num CHAR(6)		NOT NULL,
    kor 	INT 		NOT NULL CHECK (0<=kor AND kor<=100),
    eng		INT			NOT NULL CHECK (0<=eng AND eng<=100),
    math	INT 		NOT NULL CHECK (0<=math AND math<=100)
);
use ezen_school;
desc scores;

-- 학생정보 테이블의 칼럼 'note' 삭제
use ezen_school;
alter table students drop note;

-- 학생정보 구조 확인하기
use ezen_school;
desc students;

-- 학생정보 테이블에 'email' 추가
alter table students add email VARCHAR(50); 

-- 학생정보 구조 확인하기
use ezen_school;
desc students;