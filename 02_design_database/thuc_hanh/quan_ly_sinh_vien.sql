use quan_ly_sinh_vien;
create table Class(
ClassID int not null Auto_increment primary key,
ClassName varchar(45) not null,
StartDate datetime not null,
status bit
);
create table student(
StudentId int not null auto_increment primary key,
StudentName varchar(45) not null,
Address varchar(45),
Phone varchar(20),
Status bit,
ClassId int not null,
foreign key (ClassId) references Class(ClassId)
);
create table Subject (
SubId int not null auto_increment primary key,
SubName varchar(45) not null,
Credit tinyint not null default 1 check (Credit >=1),
status bit default 1
);
CREATE TABLE Mark(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);
use quan_ly_sinh_vien;
INSERT INTO Class
VALUES
 (1, 'A1', '2008-12-20', 1),
 (2, 'A2', '2008-12-22', 1),
 (3, 'B3', current_date, 0);
 INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
select * from student;
select*
from student
where status =true;
select *
from subject
where credit<10;
select s.studentID, s.StudentName, c.ClassName
from student s join class c on s.classID=c.classID
where c.className ='A1';
select S.studentID, s.studentName, sub.subName, m.Mark
from student s join mark m on s.studentID=m.studentID join subject sub on m.subId=sub.subID
where sub.subName='CF';
