use assignmentudemy;
select * from books;
select count(title) from books;
select released_year,count(*) from books group by released_year order by released_year;
select title , count(*) from books group by stock_quantity;
select author_fname, avg(released_year) from books group by author_fname;
select concat(author_fname,' ',author_lname) as fullname ,pages from books where pages = (select max(pages) from books) ;
select released_year as years,count(title) as book, avg(pages) from books group by released_year order by released_year;