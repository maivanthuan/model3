use quan_ly_sinh_vien;
select subID, subName,credit, status
from subject 
where credit = (select max(credit) from subject);
select sb.subID, sb.subName, sb.credit
from subject sb join mark m on sb.subID=m.subID
where m.mark=(select max(m.mark) as max_mark from Mark);

select s.studentID, s.studentName, s.address, s.phone, s.status, avg(m.mark)
from student s join mark m on s.studentID= m.studentID
group by studentID, studentName
order by m.mark desc;

