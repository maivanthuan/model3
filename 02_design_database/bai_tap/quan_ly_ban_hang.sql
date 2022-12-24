create database quan_ly_ban_hang;
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
(2,'thuan',19),
(4,'Mai', 19),
(3,'Phuc',20);
update Customer
set cName='ly'
where cID=1;
insert Order1
values
(1,2,'2003-10-31','hello'),
(3,4,'1997-12-5','xinchao');
delete  from order1
where oID =1;
select * from Order1;
