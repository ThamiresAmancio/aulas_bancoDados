#Comentário em linha 
/*Comentário em bloco
/*Criando um database*/

create database dbClinicaVeterinaria;

/*serve para selecionar o database que iremos utilizar*/
use dbClinicaVeterinaria;
/*Criando uma tabela dentro do database*/

create table tblClientes (
	idCliente int not null auto_increment primary key,
    nome varchar(50) not null,
    email varchar(40) not null,
    celular varchar(15),
    endereco varchar(100),
    complemento varchar(100),
    bairro varchar(30),
    cep varchar(10),
    estado varchar(2),
    cidade varchar(40)
);
/*Permite visualizar todos os dados de uma tabela*/
select * from tblClientes;

/*Inserindo dados dentro de uma tabela*/
insert into tblClientes
(nome,email,celular,endereco,complemento,
bairro,cep,estado,cidade)
values('Alana de Souza Amancio','alanaamancio@gmail.com','011954532068',
		'Rua Amado de Abreu,350','Apto 10 bloco B','Amado Batista','06380-555','SP','São Paulo');
        



