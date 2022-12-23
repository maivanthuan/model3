use ss2_tao_bang;
create table HocSinh(
MaHS varchar(20) PRIMARY KEY,
TenHS varchar(45),
NgaySinh datetime,
Lop varchar(45),
GT varchar(45)
);
create table MonHoc(
MaMh varchar(20) PRIMARY KEY,
TenMh varchar(45)
);
create table BangDiem(
MaHS varchar(45),
MaMH varchar(45),
NgayKT datetime,
PRIMARY KEY(MaHS, MaMH),
foreign key (MaHS) references HocSinh(MaHS),
foreign key (MaMH) references MonHoc(MaMH)
);
create table GiaoVien(
MaGV varchar(45) primary key,
TenGV varchar(45),
SDT varchar(10)
);
alter table MonHoc add MaGV varchar(45);
alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references Giaovien(MaGV);