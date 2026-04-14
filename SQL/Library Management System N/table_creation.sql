-- Library Magagement Stytem Project2

create database Library_project;
use Library_project;

-- Creating Table

create Table branch(
branch_id varchar(10) primary key,
manager_id varchar(10),
branch_address varchar(55),
contact_no varchar(20)

);

create table employees(
emp_id varchar(10) primary key,
emp_name varchar(25),
position varchar(15),
salary int,
branch_id varchar(25)
);

create table books(
isbn varchar(20) primary key,
book_title varchar(75),
category varchar(10),
rental_price float,
statu varchar(15),
author varchar(35),	
publisher varchar(55)
);

create table members(
member_id varchar(20) primary key,
member_name varchar(25),	
member_address varchar(75),
reg_date date
);

create table issued_status(
issued_id varchar(10) primary key, 	
issued_member_id varchar(25),
issued_book_name varchar(75),
issued_date date,
issued_book_isbn varchar(25),
issued_emp_id varchar(10)
);

  create table return_status(
  return_id varchar(10) primary key,
  issued_id varchar(10),
  return_book_name varchar(70),
  return_date date,
  return_book_isbn varchar(10)
  );

-- Foreign Key

alter table issued_status
add constraint fk_members
foreign key(issued_member_id)
references members(member_id);


alter table issued_status
add constraint fk_books
foreign key(issued_book_isbn)
references books(isbn);

alter table issued_status
add constraint fk_employees
foreign key(issued_emp_id)
references employees(emp_id);

alter table employees
add constraint fk_branch
foreign key(branch_id)
references branch(branch_id);

alter table return_status
add constraint fk_issued_status
foreign key(issued_id)
references issued_status(issued_id);











