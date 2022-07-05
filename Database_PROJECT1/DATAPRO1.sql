create database dataPro1

use dataPro1

create table passenger(
						id int PRIMARY KEY AUTO_INCREMENT,
						pname varchar(20),
						pcourse varchar(30),
						pfee int
)

select * from passenger

drop table passenger