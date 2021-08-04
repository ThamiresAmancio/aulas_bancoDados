create database fastparking_api;

use fastparking_api;

create table tblClientes (
	id int primary key auto_increment ,
    nome varchar(100) not null,
    placa varchar(10),
    dataHoraEntrada datetime,
    dataHoraSaida datetime,
    valorPagar decimal,
    idPreco int,
    unique key (id)
)

auto_increment=1;


drop table tblTeste;

create table tblPreco (
	id int primary key auto_increment,
    primeirasHoras decimal,
    demaisHoras decimal,
    unique key (id)
);


/*Clientes*/
insert into tblClientes (nome,placa,dataHoraEntrada,idPreco) values('Alan ','ert-2607', '2021-07-07 11:43:00',1);

/*Preços*/
insert into tblPreco (primeirasHoras,demaisHoras) values('10.00','5.00');

delete from tblClientes where id = 1;

select * from tblpreco;
select * from tblClientes;