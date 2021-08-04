create database fastparkingapi;

use fastparkingapi;

create table tblPreco (
    id int primary key auto_increment,
    primeirasHoras decimal(10,2) not null,
	demaisHoras decimal(10,2) not null
);


create table tblClientes (
    id int primary key auto_increment,
    nome varchar(100) not null,
	placa varchar(10) not null,
    dataHoraEntrada datetime ,
	dataHoraSaida datetime,
    valorPagar decimal(10,2),
    idPreco int not null,
    foreign key (idPreco) references tblpreco(id)
);


drop table tblClientes;















































select * from tblpreco;
select * from tblClientes;