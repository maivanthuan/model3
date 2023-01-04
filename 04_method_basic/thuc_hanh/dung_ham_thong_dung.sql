use quan_ly_sinh_vien;
select address, count(studentID) as'So luong hoc vien'
from student
group by address;
select s.studentID , s.studentName, avg(Mark) as 'Diem_trung binh'
from student s join mark m on s.studentID=m.studentID
group by s.StudentID, s.StudentName;
select s.studentID , s.studentName, avg(Mark) as 'Diem_trung binh'
from student s join mark m on s.studentID=m.studentID
group by s.StudentID, s.StudentName
having avg(Mark)>15;
select s.studentID , s.studentName, avg(Mark) as 'Diem_trung binh'
from student s join mark m on s.studentID=m.studentID
group by s.StudentID, s.StudentName
having avg(Mark) >= all(select avg(Mark) from mark
 group by mark.StudentID);