use case_study;
-- task2
select * from nhan_vien
where (ho_ten like 'H%') or (ho_ten like 'T') or (ho_ten like 'K') and (length(ho_ten)<=15);
-- task3
select * from khach_hang
where timestampdiff(year,ngay_sinh,curdate())between 18 and 50 and (dia_chi like '%Đà Nẵng' or dia_chi like '%Quảng Trị');
-- task4
select k.ho_ten, count(h.ma_hop_dong) as dem_so
from khach_hang k join hop_dong h on k.ma_khach_hang =h.ma_khach_hang
join loai_khach l on k.ma_loai_khach=l.ma_loai_khach
where l.ten_loai_khach_hang='Diamond'
group by k.ho_ten
order by dem_so asc;
-- task5
-- select k.ma_khach_hang, k.ho_ten, l.ten_loai_khach_hang, h.ma_hop_dong, dv.ten_dich_vu, h.ngay_lam_hop_dong, h.ngay_ket_thuc, (dv.chi_phi_thue+ifnull(dvdk.gia*hdct.so_luong,0))
-- as tong_tien
-- from khach_hang k
-- left join loai_khach l on k.ma_loai_khach=l.ma_loai_khach
-- left join hop_dong h on h.ma_khach_hang=l.ma_
-- left join dich_vu dv on dv.ma_dich_vu= h.ma_dich_vu
-- left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong=h.ma_hop_dong
-- left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
-- group by h.ma_hop_dong;
-- task6
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv
inner join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where dv.ma_dich_vu not in
(select ma_dich_vu from hop_dong where
year(ngay_lam_hop_dong) = '2021' and (month(ngay_lam_hop_dong) between 1 and 3));


