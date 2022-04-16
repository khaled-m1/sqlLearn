# salam - create DDL
create database bank;
use bank;
create table customer(
   id varchar(10) primary key ,
   username varchar(15) ,
   email varchar(20) unique ,
   password varchar(25) ,
   role varchar(10) check(role= 'admin' or role= 'user')
);
use bank;
create table account (
  id varchar(10) primary key ,
  balance int ,
  foreign key (id) references customer(id)
);
use bank;
create table loan (
  id varchar(10) primary key ,
  loanAmount int default 100 ,
  isPaid boolean default false ,
  account_id varchar(10) ,
  foreign key(account_id) references account(id)
);

# salam - Alter DDL
alter table customer add column phoneNumber varchar(10);
alter table customer drop column phoneNumber;
# Drop - DDL
drop table loan;
drop database back;
# DDL - truncate // drop data in taple
truncate table loan;

#DQL - Select
select username, password from customer;
select * from account;
select * from loan;
# DML - Insert
insert into customer values ('1','fisal','f@f.com','123','admin');
insert into customer values ('2','ali','a@a.com','123','user');
# for forign key most be add in coustomer -and- can't not add tow for id 1
insert into account values ('1', 0);
insert into account values ('1', 1000);  # this is error
insert into account values ('2', 1000);

insert into loan values ('123', 1000, false, '1');
insert into loan values ('124', 500, false, '1');

# DML - Ubdate
update customer set password='85245' where id='1';
# DML - Delete 
delete from loan where id='123';

