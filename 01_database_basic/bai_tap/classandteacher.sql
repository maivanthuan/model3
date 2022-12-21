use student_manager;
CREATE table class(
id_class int,
name_class varchar(45)
);
create table teacher(
id_teacher int,
name_teacher varchar(45),
age int,
country varchar(45)
);
select * from student_manager.class;
insert into class 
value (1, 'thuan');
select * from student_manager.teacher;
insert into teacher 
value (1,'phuc',12,'viet nam');
