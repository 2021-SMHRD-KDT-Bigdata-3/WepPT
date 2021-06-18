drop table member;
select * from member;
ALTER TABLE member DROP PRIMARY KEY;
drop table member cascade constraints;


create table member (
    category varchar2(50) not null,
    id varchar2(50) UNIQUE,
    pw varchar2(50) not null,
    name varchar2(50) not null ,
    age number not null,
    tel varchar2(50) not null,
    email varchar2(100) not null,
    height float not null,
    weight float not null,
    bmi float not null,
    constraint wmember_pk primary key(category)
);



insert into member values ('a', 'kite', '123', 'kite', 20, '0203120', 'sdksf@#nag', 100, 100, 240);

select * from member;

select * from youtube;
drop table youtube cascade constraints;
ALTER TABLE youtube DROP PRIMARY KEY;



create table youtube(
 category varchar2(50),
 link varchar2(300),
 part varchar2(100) not null,
 gender varchar2(30) not null,
 constraint youtube_fk_category foreign key(category)
 references member(category)
);









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





