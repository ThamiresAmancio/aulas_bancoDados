create database icatalogo;

use icatalogo;

create table tbl_produto(
    id int primary key auto_increment,
    descricao varchar(255) not null,
    peso decimal not null,
    quantidade int not null,
    cor varchar(100) not null,
    tamanho varchar(100),
    valor decimal not null,
    desconto int,
    imagem varchar(500)
);

select * from tbl_produto;
insert into tbl_produto(id)values("1");



insert into tbl_produto(peso)values(65);
insert into tbl_produtos()values("5");
