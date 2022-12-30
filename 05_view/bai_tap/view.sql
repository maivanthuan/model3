create database ss5_demo;
use ss5_demo;
create table product(
id int not null auto_increment primary key,
productCode int ,
productName varchar(45),
productPrice double,
productAmount varchar(45),
productDescription varchar(45),
productStatus bit(1)
);
insert into product(productCode,productName,productPrice,productAmount,productDescription,productStatus)
values(1,'keo',5000,2,'keo',1),
(2,'banh',10000,4,'banh',1),
(3,'nuoc',12000,1,'banh',0);
create unique index idx_product
on product (productCode);
alter table product add index idx_products(productName, productPrice);
explain select * from product;
create view product_view as
select productCode, productName, productPrice, productStatus from product;
select * from product_view;
update product_view 
set productName='Kem'
where productCode=1;
drop view product_view;
delimiter //
create procedure findAllProduct()
begin
select *from product;
end //
delimiter ;
drop procedure findAllProduct;
call findAllProduct;
delimiter //
drop procedure if exists addProduct;
create procedure addProduct(in productCode1 int,in productName1 varchar(45),in productPrice1 double,in productAmount1 int,in productDescription1 varchar(45),in productStatus1 bit(1))
begin
insert into Product (productCode,productName,productPrice,productAmount,productDescription,productStatus)
values(productCode1,productName1,productPrice1,productAmount1,productDescription1,productStatus1);
end //
delimiter ;

call addProduct(6,'dia',7000,9,'dia',0);

delimiter //
drop procedure if exists editProduct;
create procedure editProduct(in id_update int , in new_name varchar(45))
begin
update Product
set productName= new_name
where id=id_update;
end //
delimiter ;
call editProduct(1,'aa');
select *from product;

delimiter //
drop procedure if exists removeProduct;
create procedure removeProduct(in id_remove int )
begin
delete from Product
where id=id_remove;
end //
delimiter ;
call removeProduct(1);
select *from Product;



