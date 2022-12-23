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