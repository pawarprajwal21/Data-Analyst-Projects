select * from books;
select * from branch;
select * from employees;
select * from members;
select * from issued_status;
select * from return_status;

-- Project Task


-- Task 1. Create a New Book Record -- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"

insert into books (isdn,book_title,category, rental_price,statu,author,publisher)
values('978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');
select * from books;


-- Task 2: Update an Existing Member's Address

update members 
set member_address='125 Main St'
where member_id='C101';
select * from members;


-- Task 3: Delete a Record from the Issued Status Table 
-- Objective: Delete the record with issued_id = 'IS121' from the issued_status table.

delete from issued_status
where issued_id = 'IS121';
select * from issued_status;


-- Task 4: Retrieve All Books Issued by a Specific Employee -- Objective: Select all books issued by the employee with emp_id = 'E101'.

select * from issued_status
where issued_emp_id='E101';


-- Task 5: List Members Who Have Issued More Than One Book -- Objective: Use GROUP BY to find members who have issued more than one book.

select issued_emp_id, 
count(issued_id) as total_book_issued
from issued_status
group by issued_emp_id
having count(issued_id)>1;


-- CTAS

-- Task 6: Create Summary Tables: Used CTAS to generate new tables based on query results - each book and total book_issued_cnt**

create table book_cnts
select b.isbn,b.book_title, count(ist.issued_id) as no_issued
from books as b
join issued_status as ist
on ist.issued_book_isbn=b.isbn
group by 1,2;


-- Task 7. Retrieve All Books in a Specific Category:
 
 select * from books
where Category='Classic';


-- Task 8: Find Total Rental Income by Category:

select 
b.Category, sum(b.rental_price),count(*)
from books as b
join issued_status as ist
on ist.issued_book_isbn=b.isbn
group by 1;

-- task 9 List Members Who Registered in the Last 180 Days:
select * from members
where reg_date>= current_date-interval 180 day;

insert into members(member_id,member_name,member_address,reg_date)
values
('C188','Prajwal Pawar','145 Main St','2024-06-01'),
('C186','Om Pawar','135 Main St','2025-05-01');

-- task 10 List Employees with Their Branch Manager's Name and their branch details:


select e1.*,
b.manager_id,
e2.emp_name as manager
from employees as e1
join
branch as b
on b.branch_id=e1.branch_id
join
employees as e2
on b.manager_id=e2.emp_id;
-- Task 11. Create a Table of Books with Rental Price Above a Certain Threshold 7USD:
create table book_price_greater_than_seven
as
select * from books
where rental_price>7;

select * from book_price_greater_than_seven;
-- Task 12: Retrieve the List of Books Not Yet Returned
select 
distinct ist.issued_book_name
from issued_status as ist
left join return_status as rs
on ist.issued_id = rs.issued_id
where rs.return_id is null;

select * from return_status;
