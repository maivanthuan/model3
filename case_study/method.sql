use case_study;
-- task2
select * from nhan_vien
where (ho_ten like 'H%') or (ho_ten like 'T') or (ho_ten like 'K') and (length(ho_ten)<=15);
-- task3
select * from khach_hang
where timestampdiff(year,ngay_sinh,curdate())between 18 and 50 and (dia_chi like '%Đà Nẵng' or dia_chi like '%Quảng Trị');
-- task4
select k.ho_ten, count(h.ma_hop_dong) as dem_sox
from khach_hang k join hop_dong h on k.ma_khach_hang =h.ma_khach_hang
group by k.ho_ten
order by dem_so asc;

