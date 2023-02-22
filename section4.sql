Create database AssignmentUdemy;
show databases;
use AssignmentUdemy;
Create table Section4Task(
ID int auto_increment,
First_name varchar(10) not null,
Middle_name varchar(10) null,
Last_name varchar(10) not null,
Age int not null,
Current_status varchar(10) not null default 'employed',
primary key(ID));

drop table Section4Task;
desc Section4Task;
select * from Section4Task;
insert into Section4Task(First_name,Middle_name,Last_name,Age,Current_status) values 
('Raju',' ','bhai','21','Raj'),
('udith',' ','r','21','Raj'),
('srikar','idontknow','',22,DEFAULT);


INSERT INTO `assignmentudemy`.`Section4Task` (`First_name`, `Last_name`, `Age`) VALUES 
('raju', 'r', '21');



