/*Cria um database*/
create database dbVideoLocadoraTB;

/*Permite visualizar os databases no BD*/
show databases;

/*Ativa o database a ser utilizado*/
use dbVideoLocadoraTB;

/*Apaga o database e todo sua estrutura*/
drop database dbVideoLocadoraTB;

/*CRIANDO AS TABELAS DO BD*/

/*Tabela de Generos*/
create table tblGenero (
	idGenero int not null auto_increment primary key,
    nome varchar(45) not null,
    unique key (idGenero)
);

/*Tabela de Classificação*/
create table tblClassificacao (
	idClassificacao int not null auto_increment primary key,
    nome varchar(45) not null,
    unique key (idClassificacao)
);

/*Permite exibir todas as tabelas existentes no BD*/
show tables;

/*Permite visualizar a estrutura de uma tabela*/
desc tblGenero;

/*Tabela de Estudios*/
create table tblEstudios (
	idEstudio int not null auto_increment primary key,
    nome varchar(45) not null,
    unique key (idEstudio)
);

/*Tabela de Porte dos Estudios*/
create table tblPorte (
	idPorte int not null auto_increment primary key,
    tipoPorte varchar(45) not null,
    unique key (idPorte)
);

/*Tabela de Premiações dos Filmes e Atores*/
create table tblPremiacoes (
	idPremiacao int not null auto_increment,
    nome varchar(45) not null,
    unique key (idPremiacao),
    primary key (idPremiacao)
);

/*Tabela de Sexo*/
create table tblSexo (
	idSexo int not null auto_increment,
    sigla varchar(2) not null,
    descricao varchar(20) not null,
    unique key (idSexo),
    primary key (idSexo)
);

/*Tabela de Nacionalidades*/
create table tblNacionalidades (
	idNacionalidade int not null auto_increment,
    nome varchar(45) not null,
    unique key (idNacionalidade),
    primary key (idNacionalidade)
);


/*Tabela de Filmes*/
create table tblFilme (
	idFilme int not null auto_increment,
    nome varchar(80) not null,
    duracao time not null,
    qtde int not null,
    dataLacamento date,
    unique key (idFilme),
    primary key (idFilme)
);

/*ALTERANDO AS TABELAS*/
	/*Alteração para adicionar um novo campo*/
alter table tblFilme
	add sinopse text not null;

/*Alteração no nome da tabela*/
rename table tblFilme to tblFilmes;

show tables;
desc tblFilmes;

/*Alterando a nomenclatura e ou o tipo de dados de um campo*/
alter table tblFilmes
	change dataLacamento dataLancamento date;

/*Alterando a tabela apenas os tipos de dados de um campo*/
alter table tblFilmes
	modify column nome varchar(100) not null;

/*Alterando a tabela para apagar uma coluna */
alter table tblFilmes
	drop column sinopse;

/*Permite apagar uma tabela, sua estrutura e o dados*/    
drop table tblFilme;

/*CRIANDO TABELAS COM CHAVE ESTRANGEIRA (FK)*/
/*Tabela de Filmes*/
create table tblFilmes (
	idFilme int not null auto_increment,
    nome varchar(80) not null,
    duracao time not null,
    qtde int not null,
    dataLancamento date,
    sinopse text not null,
    idNacionalidade int not null, /*Criação do atributo para FK*/
    idClassificacao int not null, /*Criação do atributo para FK*/
    unique key (idFilme),
    primary key (idFilme),
    
    /*Nacionalidades*/
    constraint FK_Nacionalidade_Filme /*Nome do relacionamento*/
    foreign key (idNacionalidade) /*Quem será a FK nesta tabela*/
    references tblNacionalidades (idNacionalidade), /*De onde vem a FK (tabela e PK)*/
	
    /*Classificação*/
    constraint FK_Classificacao_Filme
    foreign key (idClassificacao)
    references tblClassificacao (idClassificacao)
);

desc tblFilmes;

/*Criação da tabela FilmeGenero*/
create table tblFilmeGenero (
	idFilmeGenero int not null auto_increment,
    idFilme int not null,
    idGenero int not null,
	unique key (idFilmeGenero),
    primary key (idFilmeGenero),
    
    /*Relacionamento Com Filmes*/
    constraint FK_Filmes_FilmeGenero
    foreign key (idFilme)
    references tblFilmes (idFilme),
    
    /*Relacionamento com Genero*/
    constraint FK_Genero_FilmeGenero
    foreign key (idGenero)
    references tblGenero (idGenero)
);

desc tblFilmeGenero;

/*Para deletar uma coluna que é FK primeiro 
apagamos o relacionamento*/
alter table tblFilmeGenero
	drop foreign key FK_Filmes_FilmeGenero;

/*Após apagar a FK, agora podemos deletar o atributo*/
alter table tblFilmeGenero
	drop column idFilme;
    
alter table tblFilmeGenero
	drop foreign key FK_Genero_FilmeGenero;
    
alter table tblFilmeGenero
	drop column idGenero;
    
/*Alterando uma tabela para adicionar a FK*/    
/*Alteração na  tabela para adicionar o novo campo*/
alter table tblFilmeGenero
	add idFilme int not null;
    
/*Alteração na tabela para adicionar o relacionamento
com a FK*/
alter table tblFilmeGenero
	add constraint FK_Filmes_FilmeGenero
		foreign key (idFilme)
        references tblFilmes (idFilme);
        
        
/*Alteração na  tabela para adicionar o novo campo*/
alter table tblFilmeGenero
	add idGenero int not null;
    
/*Alteração na tabela para adicionar o relacionamento
com a FK*/
alter table tblFilmeGenero
	add constraint FK_Genero_FilmeGenero
		foreign key (idGenero)
        references tblGenero (idGenero);
        
desc tblFilmeGenero;

/*Criação da tabela FilmeEstudio*/
create table tblFilmeEstudio (
	idFilmeEstudio int not null auto_increment,
    idFilme int not null,
    idEstudio int not null,
    idPorte int not null,
	unique key (idFilmeEstudio),
    primary key (idFilmeEstudio),
    
    /*Relacionamento Com Filmes*/
    constraint FK_Filmes_FilmeEstudio
    foreign key (idFilme)
    references tblFilmes (idFilme),
    
    /*Relacionamento com Estudio*/
    constraint FK_Estudio_FilmeEstudio
    foreign key (idEstudio)
    references tblEstudios (idEstudio),
    
	/*Relacionamento com Porte*/
    constraint FK_Porte_FilmeEstudio
    foreign key (idPorte)
    references tblPorte (idPorte)
);

/*Criação da tabela FilmePremiação*/
create table tblFilmePremiacao (
	idFilmePremiacao int not null auto_increment,
    idFilme int not null,
    idPremiacao int not null,
    qtdeIndicacao int,
    status boolean,
	unique key (idFilmePremiacao),
    primary key (idFilmePremiacao),
    
    /*Relacionamento Com Filmes*/
    constraint FK_Filmes_FilmePremiacao
    foreign key (idFilme)
    references tblFilmes (idFilme),
    
    /*Relacionamento com Premiacao*/
    constraint FK_Premiacao_FilmePremiacao
    foreign key (idPremiacao)
    references tblPremiacoes (idPremiacao)

);

/*Criação da tabela Atores*/
create table tblAtores (
	idAtor int not null auto_increment,
    idSexo int not null,
    nome varchar(80) not null,
    dataNascimento date not null,
    nomeArtistico varchar(80),
	unique key (idAtor),
    primary key (idAtor),
    
    /*Relacionamento Com Sexo*/
    constraint FK_Sexo_Atores
    foreign key (idSexo)
    references tblSexo (idSexo)
    
);

/*Criação da tabela AtorPremiação*/
create table tblAtorPremiacao (
	idAtorPremiacao int not null auto_increment,
    idAtor int not null,
    idPremiacao int not null,
    qtdeIndicacao int,
    status boolean,
	unique key (idAtorPremiacao),
    primary key (idAtorPremiacao),
    
    /*Relacionamento Com Atores*/
    constraint FK_Atores_AtorPremiacao
    foreign key (idAtor)
    references tblAtores (idAtor),
    
    /*Relacionamento com Premiacao*/
    constraint FK_Premiacao_AtorPremiacao
    foreign key (idPremiacao)
    references tblPremiacoes (idPremiacao)

);

/*Criação da tabela Diretores*/
create table tblDiretores (
	idDiretor int not null auto_increment,
    idSexo int not null,
    nome varchar(80) not null,
    dataNascimento date not null,
    unique key (idDiretor),
    primary key (idDiretor),
    
    /*Relacionamento Com Sexo*/
    constraint FK_Sexo_Diretores
    foreign key (idSexo)
    references tblSexo (idSexo)
    
);

/*Criação da tabela DiretorNacionalidade*/
create table tblDiretorNacionalidade (
	idDiretorNacionalidade int not null auto_increment,
    idDiretor int not null,
    idNacionalidade int not null,
    unique key (idDiretorNacionalidade),
    primary key (idDiretorNacionalidade),
    
    /*Relacionamento Com Nacionalidades*/
    constraint FK_Nacionalidades_DiretorNacionalidade
    foreign key (idNacionalidade)
    references tblNacionalidades (idNacionalidade),
    
    /*Relacionamento com Diretor*/
    constraint FK_Diretor_DiretorNacionalidade
    foreign key (idDiretor)
    references tblDiretores (idDiretor)

);

/*Criação da tabela AtorNacionalidade*/
create table tblAtorNacionalidade (
	idAtorNacionalidade int not null auto_increment,
    idAtor int not null,
    idNacionalidade int not null,
    unique key (idAtorNacionalidade),
    primary key (idAtorNacionalidade),
    
    /*Relacionamento Com Nacionalidades*/
    constraint FK_Nacionalidades_AtorNacionalidade
    foreign key (idNacionalidade)
    references tblNacionalidades (idNacionalidade),
    
    /*Relacionamento com Ator*/
    constraint FK_Ator_AtorNacionalidade
    foreign key (idAtor)
    references tblAtores (idAtor)

);

/*Criação da tabela FilmeDiretor*/
create table tblFilmeDiretor (
	idFilmeDiretor int not null auto_increment,
    idDiretor int not null,
    idFilme int not null,
    unique key (idFilmeDiretor),
    primary key (idFilmeDiretor),
    
    /*Relacionamento Com Filmes*/
    constraint FK_Filmes_FilmeDiretor
    foreign key (idFilme)
    references tblFilmes (idFilme),
    
    /*Relacionamento com Diretor*/
    constraint FK_Diretor_FilmeDiretor
    foreign key (idDiretor)
    references tblDiretores (idDiretor)

);

/*Criação da tabela FilmeAtor*/
create table tblFilmeAtor (
	idFilmeAtor int not null auto_increment,
    idAtor int not null,
    idFilme int not null,
    unique key (idFilmeAtor),
    primary key (idFilmeAtor),
    
    /*Relacionamento Com Filmes*/
    constraint FK_Filmes_FilmeAtor
    foreign key (idFilme)
    references tblFilmes (idFilme),
    
    /*Relacionamento com Ator*/
    constraint FK_Ator_FilmeAtor
    foreign key (idAtor)
    references tblAtores (idAtor)

);

show tables;

/*Testando a criação da tabela para iniciar o incremento na PK a 
partir de um valor*/
	create table tblTeste (
		idTeste int not null auto_increment primary key,
		nome varchar(50) not null
	)
	auto_increment=10 /*iniciando o incremento a partir de um valor*/
	;

insert into tblTeste (nome) values ('alguma coisa'),('Outra coisa');

select * from tblTeste;




