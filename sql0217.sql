-- 버전 조회
select version(); 

-- 데이터베이스 생성
create database shop_mall;
-- 데이터베이스 조회 
show databases;

-- 계정 생성
USE mysql;
CREATE USER shop_admin@localhost IDENTIFIED BY 'shopadmin';
-- 계정 조회
USE mysql;
SELECT user, host from user;

-- 권한 부여
USE mysql;
GRANT ALL PRIVILEGES ON shop_mall.* to shop_admin@localhost;
-- 권한 조회
USE mysql;
SHOW GRANTS FOR shop_admin@localhost;

-- 회원 정보 테이블 
use shop_mall;
create table member(
);