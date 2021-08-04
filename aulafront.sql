create database aulaFront;

use aulaFront;


create table contatos (
	id int primary key,
    nome varchar(50) not null,
    email varchar(35),
    cidade varchar(30),
    estado varchar(2)
    
    );
    
    
    insert into contatos (nome, email, cidade, estado) values ('Thamires', 'thami@gmail.com','Carapicuíba','SP');

    insert into contatos (nome, email, cidade, estado) values ('Alan', 'alan@gmail.com','Carapicuíba','SP');
    
	insert into contatos (nome, email, cidade, estado) values ('Emmanuel', 'emmanuel@gmail.com','Carapicuíba','SP');

    


select *from contatos;