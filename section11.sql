use assignmentudemy;


select 1 in (5,3) or 9 between 10 and 11;
select * from books;
select title,released_year from books where released_year <1980;
select title, author_lname from books where author_lname in ('Eggers','Chabon');

select title, author_lname from books where author_lname = 'Lahiri' and released_year >2000;

select title , pages from books where pages between 100 and 200;

select title, author_lname from books where author_lname like 'C%' or  author_lname like 'S%';

select title, author_lname ,
case 
when title like '%Stories%'
then 'short stories'
when title like '% A Heartbreaking%' then 'Memoir'
else 'Novel'
end as types
from books;

select author_fname, author_lname ,concat(count(*),' ','books') as counts from books group by author_lname ;