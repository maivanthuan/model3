create database ss3_quanlysinhvien;
create table Class(
ClassID int not null AUTO_INCREMENT primary key,
ClassName varchar(45),
StartDate datetime,
Status bit
);
create table Student(
StudentID int not null AUTO_INCREMENT primary key,
StudentName varchar(45),
address varchar(45),
phone varchar(10),
Status bit,
ClassID int,
foreign key (classID) references Class(ClassID)
);
create table Subject1(
SubID int not null AUTO_INCREMENT primary key,
SubName varchar(45),
Credit int,
Status bit
);
create table Mark(
MarkID int not null AUTO_INCREMENT primary key,
SubID int,
StudentID int,
Mark float default 0 check (Mark between 0 and 100),
Examtimes tinyint default 1,
unique(SubID,StudentID),
foreign key (SubID) references Subject1(SubID),
foreign key (StudentID) references Student(StudentID)
);
insert into Class
values
(1,'A1','2008-12-20',1),
(2,'A2','2008-10-22',1),
(3,'B3',Current_Date,0);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
INSERT INTO Subject1
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
select * from student
where StudentName like 'h%';
select * from class
where StartDate like '%12%';
select * from subject1
where Credit between 3 and 5;
select * from class;
update student 
set classID=2
where studentName ='Hung';
select s.studentName, s.subName, m.mark
from student s join mark m on s.studentID=m.studentID join subject1 sub on m.subID=sub.subID 
order by mark desc,studentName asc;



