use assignmentudemy;

create table students(
id int auto_increment primary key,
first_name varchar(50)
);

create table papers(
title varchar(50),
grade decimal(5,2),
student_id int ,
foreign key paper(student_id) references students(id) on delete cascade
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

select * from students;
select * from papers;

drop table papers;

select first_name,title,grade from students join papers on students.id = papers.student_id;
select first_name,title,grade from students left join papers on students.id = papers.student_id;

select first_name,ifnull(title,'missing')as titles, ifnull(grade,0) as grades from students left join papers on students.id = papers.student_id;

select first_name, ifnull(avg(grade),0) as average from students left join papers on students.id = papers.student_id group by id order by average desc;

select first_name,ifnull(avg(grade),0) as average, case
when avg(grade)>70 then 'passing' else 'failing' end as passing_status from students left join papers on students.id=papers.student_id group by first_name order by average desc ;