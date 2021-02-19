-- 제약조건 추가에 사용한 sql문
use ezen_school;
alter table scores add foreign key (std_num) references students(std_num);
-- 점수 테이블 제약조건 조회에 사용한 sql문
use ezen_school;
show create table scores;

-- 학생 테이블 레코드 삽입하기
insert into students values('202101', '라이언', '2001-01-15', '010-1234-5678', '서울시 강남구 압구정동', 'ryan@naver.com');
insert into students values('202102', '어피치', '2001-02-20', '010-1234-1313', '서울시 강남구 신사동', 'apeach@gmail.com');
insert into students values('202103', '무지', '2001-03-05', '010-2424-8899', '서울시 강남구 논현1동', 'muzi@daum.net');
insert into students values('202104', '콘', '2001-04-25', '010-5577-5612', '서울시 강남구 역삼2동', 'con@naver.com');
insert into students values('202105', '제이지', '2001-05-01', '010-6322-9874', '서울시 강남구 도곡1동', 'jay-g@gmail.com');
-- 레코드 조회하기
use ezen_school;
select * from students;

-- 점수 테이블 레코드 삽입하기
insert into scores values('202101', 90, 88, 95);
insert into scores values('202102', 88, 78, 78);
insert into scores values('202103', 78, 88, 98);
insert into scores values('202104', 65, 58, 75);
insert into scores values('202105', 85, 74, 65);
-- 레코드 조회하기
use ezen_school;
select * from scores;

-- 점수 테이블에서 국어 점수가 80점 이상인 레코드의 학번과 국어를 조회
use ezen_school;
select std_num, kor from scores where kor>=80;

-- 학생 테이블에서 학번이 ‘202104’인 레코드에 대해서 전화번호를 ‘010-1111-9999’ 로 수정하시오.
use ezen_school;
update students set tel='010-1111-9999' where std_num='202104';

-- 수정된 내용 조회
select * from students;
select * from students where std_num='202104';

-- 점수 테이블에서 학번이 ‘202105’인 레코드 삭제
delete from scores where std_num='202105';
select * from scores;

-- 계정 추가
create user ezenshcool_admin@localhost identified by 'admin1234';
-- 계정 현황 조회
use mysql;
select user, host from user;

-- 권한 부여
grant insert, delete, update, select on ezen_school.* to ezenshcool_admin@localhost;
-- 사용자 권한 조회
show grants for ezenshcool_admin@localhost;

-- 권한 회수 
revoke delete on ezen_school.* from ezenshcool_admin@localhost;
-- 변경된 권한 조회
show grants for ezenshcool_admin@localhost;

-- 계정 삭제
drop user ezenshcool_admin@localhost;
-- 계정 조회
use mysql;
select user, host from user;

-- 학생 테이블 인덱스 생성
use ezen_school;
create index idx_students on students(name);
-- 학생 테이블 인덱스 조회
show index from students;


-- 점수 테이블 인덱스 생성
use ezen_school;
create index idx_scores on scores(std_num);
-- 학생 테이블 인덱스 조회
show index from scores;

-- 학생 테이블 인덱스 삭제
alter table students drop index idx_students;
-- 학생 테이블 인덱스 조회
show index from students;

-- 점수 테이블 인덱스 삭제
alter table scores drop index idx_scores;
-- 점수 테이블 인덱스 조회
show index from scores;