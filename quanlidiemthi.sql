create database quanlidiemthi;
use quanlidiemthi;
create table hocsinh(
MaHS varchar(20)primary key,
TenHS varchar(50),
NgaySinh datetime,
Lop varchar(20),
GT varchar(20)
);
create table MonHoc(
MaMH varchar(20),
TenMH varchar(50)
);
create table BangDiem(
MaHS varchar(20),
MaMH varchar(20),
DiemThi int,
NgayKT datetime,
primary key(MaHS,MaMH),
foreign key(MaHS) references HocSinh(MaHS),
foreign key(MaMH)references MonHoc(MaMH)
);
create table GiaoVien(
MaGv varchar(20)primary key,
TenGv varchar(20),
SDT varchar(10)
);
alter table MonHoc add MaGV varchar(20);
alter table MonHoc add constraint fk_MaGV foreign key(MaGV) references GiaoVien(MaGV);