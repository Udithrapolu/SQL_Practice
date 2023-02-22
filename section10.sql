use assignmentudemy ;
create table people (
name varchar(100), birthdate Date , birthtime time , birthdt datetime ,created_at timestamp default current_timestamp, update_at timestamp on update current_timestamp
);
desc people;

insert into people(name,birthdate,birthtime,birthdt) values ('Ramasundar','2000-12-25','11:45:59','2000-12-25 11:45:59'),
 ('Alex','2001-5-25','11:00:00','2001-5-25 11:00:00'),
 ('Ravi Kumar','2012-6-5','8:08:08','2012-6-5 8:08:08');
 
 select * from people;
 select curdate();
 
 
 select birthdate,monthname(birthdate),day(birthdate) as day_, dayofweek(birthdate)as week_ , dayofyear(birthdate) as year_ from people;
 
select birthtime,hour(birthtime),minute(birthtime) from people;

select birthdate,date_format(birthdate,'%a %b %D') from people;
select birthdt , date_format(birthdt,'born on : %r') from people;


update people set name = 'Ivan' where name='Alex' ;
select name, birthdt ,created_at,update_at,timediff(created_at,update_at) from people;
drop table people;