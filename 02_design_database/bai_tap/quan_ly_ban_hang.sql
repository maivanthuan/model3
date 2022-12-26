use quan_ly_ban_hang;
create table Customer(
cID int not null primary key,
cName varchar(20),
cAge int
);
create table Order1 (
oID int not null primary key,
cID int not null,
oDate date,
oTotalPrice varchar(45),
foreign key (cID) references Customer(cID)
);
select * from Order1;
create table OrderDetail(
oID int,
pID int,
odQTY varchar(20),
foreign key (oID) references Order1(oID),
foreign key (pID) references Product(pID),
primary key(oId,pID)
);
create table Product (
pID int not null primary key,
pName varchar(20),
pPrice int 
);
insert into Customer
values
(1,'Minh Quan',10),
(2,'Ngoc Oanh', 20),
(3,'Hong Ha',50);
insert Order1
values
(1,1,'2006-3-21',null),
(2,2,'1997-3-23',null),
(3,1,'2006-3-16',null);
insert into product
values
(1,'May giat',3),
(2,'Tu lanh',5),
(3,'Dieu hoa',7),
(4,'Quat',1),
(5,'Bep dien',2);
insert into orderdetail
values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
