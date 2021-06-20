drop table member;
select * from member;
ALTER TABLE member DROP PRIMARY KEY;
drop table member cascade constraints;


-- constraint wmember_pk primary key(category)

create table member (
    category varchar2(50),
    id varchar2(50) UNIQUE,
    pw varchar2(50) not null,
    name varchar2(50) not null ,
    age number not null,
    gender number not null,
    email varchar2(100) not null,
    tel varchar2(50) not null,
    height float not null,
    weight float not null
);

insert into member values ('0', 'man', '123', 'kite', 20, '1', 'sdksf@#nag', 100, 100, 240);
insert into member values ('0', 'woman', '123', 'kite', 20, '2', 'sdksf@#nag', 100, 100, 240);
insert into member values ('3', 'mem', '123', 'kite', 20, '1', 'sdksf@#nag', 100, 100, 240);
insert into member values ('3', 'women', '123', 'kite', 20, '2', 'sdksf@#nag', 100, 100, 240);

insert into member values ('a', 'kite', '123', 'kite', 20, '0203120', 'sdksf@#nag', 100, 100, 240);

select * from member;

select * from youtube;

drop table youtube cascade constraints;
ALTER TABLE youtube DROP PRIMARY KEY;
-- ��Ʃ�� ���� 
select distinct youtuber from youtube;


create table youtube(
 category varchar2(50),
 link varchar2(300),
 part varchar2(100) not null,
 gender varchar2(30) not null,
 constraint youtube_fk_category foreign key(category)
 references member(category)
);



select * from youtube where gender='2';



select * from all_constraints
where table_name = 'member';



drop table food;
select * from food;


create table food (
    product_name varchar2(100),
    product_cal number  not null,
    product_carb number  not null,
    product_prot number  not null,
    produc_fat number  not null,
    constraint food_product_name_pk primary key(product_name)
);


select * from food;

select * from member;




insert into member values ('a', 'kite', '123', 'kite', 20, '0203120', 'sdksf@#nag', 100, 100, 240);


insert into member values ('')









