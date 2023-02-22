use assignmentudemy;
show databases;
show tables;
select * from employee;
create table contacts(
name varchar(100) not null,
phone varchar(15) not null unique
);


create table companies(
age varchar(100) check(age>=18)
);
create table palindromes(
word varchar(100) 
constraint its_not_palindromes check(reverse(word)=word)
);
drop table palindromes;


insert into contacts(name,phone) values ('udith' , 0905927458) , ('raju',892357998);
insert into contacts(name,phone) values ('srikar', 0905927458);

insert into palindromes(word) values ('mo');

alter table companies add column emp_name varchar(15) ;
alter table companies add column emp_salary int not null default 1;
desc companies;
alter table companies add column emp_phone int not null check(emp_phone>10);
alter table companies drop column emp_phone;

alter table companies rename to employees;
desc employees;
select * from employees;
alter table employees rename column age to emp_age;
alter table employees drop check employees_chk_1;
alter table employees modify emp_name varchar(100) not null default 'unknown' unique;
alter table employees change income emp_income int;

alter table employees add constraint emp_income_less check(emp_income>2000);
insert into employees(emp_income,emp_phone) values(1000,987654543);
alter table employees drop constraint emp_income_less;

