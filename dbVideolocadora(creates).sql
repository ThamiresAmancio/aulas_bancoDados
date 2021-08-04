use dbvideolocadora;

show tables;

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
    references tblnacionalidade (idNacionalidade), /*De onde vem a FK (tabela e PK)*/
	
    /*Classificação*/
    constraint FK_Classificacao_Filme
    foreign key (idClassificacao)
    references tblclassificacao (idClassificacao)
);

desc tblestudios;
desc tblFilmes;

create table tblFilmeGenero (
	idFilmeGenero int not null  auto_increment,
    idFilme int not null,
    idGenero int not null,
    unique key(idFilmeGenero),
    primary key(idFilmeGenero),
    
    /*RELACIONAMENTOS COM FILMES*/
    constraint FK_Filmes_FilmeGenero
    foreign key (idFilme)
    references tblfilmes(idFilme),
    
    
    constraint FK_Genero_FilmeGenero
    foreign key (idGenero)
    references tblgenero(idGenero)
);

/*Para deletar uma coluna que é FK primeiro apagmos o relacionamento*/
alter table tblFilmeGenero 
	drop foreign key FK_Filmes_FilmeGenero;
        
/*Após apagar a FK, agora podemos deletar o atributo*/
alter table tblFilmeGenero
	drop column idFilme;
        
        
alter table tblFilmeGenero 
	drop foreign key FK_Genero_FilmeGenero;
        
 alter table tblFilmeGenero
		drop column idGenero;
        
 /*Alterando uma tabela para adicionar a Fk*/
 /*ALTERAÇÃO NA TABELA PARA ADICIONAR O NOVO CAMPO*/
 alter table tblFilmeGenero 
	add idFilme int not null;

/*ALTERAÇÃO NA TABELA PARA ADICIONAR O RELACIONAMENTO COM A FK*/
alter table tblFilmeGenero 
	add constraint FK_Filmes_FilmeGenero
		foreign key (idFilme)
        references tblfilmes (idFilme);
        
        
alter table tblFilmeGenero 
	add idGenero int not null;

alter table tblFilmeGenero 
	add constraint FK_Genero_FilmeGenero
		foreign key (idGenero)
        references tblgenero (idGenero);
        
        
create table tblFilmeEstudio (
	idFilmeEstudio int not null auto_increment,
    idFilme int not null,
    idEstudios int not null,
    idPorte int not null,
    unique key (idFilmeEstudio),
    primary key (idFilmeEstudio),
    
    
   constraint FK_Filmes_FilmeEstudio
    foreign key (idFilme)
    references tblfilmes(idFilme),
    
    constraint FK_Estudio_FilmeEstudio
    foreign key (idEstudios)
    references tblestudios(idEstudios),
    
    constraint FK_Porte_FilmeEstudio
    foreign key (idPorte)
    references tblporte(idPorte)

);

create table tblFilmePremiacao (
	idFilmePremiacao int not null auto_increment,
    qtdeIndicacao int,
    statusPremiacao tinyint,
    idFilme int not null,
    idPremiacao int not null,
    unique key (idFilmePremiacao),
    primary key (idFilmePremiacao),
    
    
    constraint FK_Filmes_FilmePremiacao
    foreign key (idFilme)
    references tblFilmes(idFilme),
    
    constraint FK_Premiacao_FilmePremiacao
    foreign key (idPremiacao)
    references tblpremiacao(idPremiacao)
);
-- create table tblFilmePremiacao (
-- 	idFilmePremiacao int not null auto_increment,
--     qtdeIndicacao int,
--     statusPremiacao tinyint,
--     unique key (idFilmePremiacao),
--     primary key (idFilmePremiacao),
--     
--     
--     constraint FK_Filmes_FilmeEstudio
--     foreign key (idFilme)
--     references tblFilmes(idFilme),
--     
--     constraint FK_Premiacao_FilmeEstudio
--     foreign key (idPremiacao)
--     references tblpremiacao(idPremiacao)
-- );


create table tblAtores (
	idAtor int not null auto_increment,
    nome varchar(100) not null,
    dataNascimento date,
    nomeArtistico varchar(100),
    idSexo int not null,
    unique key (idAtor),
    primary key (idAtor),
    
    
    constraint FK_Sexo_Ator
    foreign key (idSexo)
    references tblsexo(idSexo)
);

create table tblAtorPremiacao (
	idAtorPremiacao int not null auto_increment,
    nome varchar(100) not null,
    dataNascimento date,
    nomeArtistico varchar(100),
    idAtor int not null,
    idPremiacao int not null,
    unique key (idAtorPremiacao),
    primary key (idAtorPremiacao),
    
    constraint FK_Ator_AtorPremiacao
    foreign key (idAtor)
    references tblatores(idAtor),
    
    
    constraint FK_Premiacao_AtorPremiacao
    foreign key (idPremiacao)
    references tblpremiacao(idPremiacao)
);

create table tblFilmeAtor (
	idFilmeAtor int not null auto_increment,
    idFilme int not null,
    idAtor int not null,
    unique key (idFilmeAtor),
    primary key (idFilmeAtor),
    
    
    constraint FK_Filmes_FilmeAtor
    foreign key (idFilme)
    references tblfilmes(idFilme),
    
     constraint FK_Ator_FilmeAtor
    foreign key (idAtor)
    references tblatores(idAtor)
);

create table tblDiretores (
	idDiretor int not null auto_increment,
    nome varchar(100) not null,
    dataNascimento date,
    idSexo int not null,
    unique key (idDiretor),
    primary key (idDiretor),
    
    
    constraint FK_Sexo_Diretores
    foreign key (idSexo)
    references tblsexo(idSexo)
);

create table tblFilmeDiretor (
	idFilmeDiretor int not null auto_increment,
    idFilme int not null,
    idDiretor int not null,
    unique key (idFilmeDiretor),
    primary key (idFilmeDiretor),
    
    
    constraint FK_Filmes_FilmeDiretor
    foreign key (idFilme)
    references tblfilmes(idFilme),
    
     constraint FK_Diretor_FilmeDiretor
    foreign key (idDiretor)
    references tblDiretores(idDiretor)
);


create table tblDiretorNacionalidade (
	idDiretorNacionalidade int not null auto_increment,
    idDiretor int not null,
    idNacionalidade int not null,
    unique key (idDiretorNacionalidade),
    primary key (idDiretorNacionalidade),
    
    
    constraint FK_Diretor_DiretorNacionalidade
    foreign key (idDiretor)
    references tblDiretores(idDiretor),
    
     constraint FK_Nacionalidade_DiretorNacionalidade
    foreign key (idNacionalidade)
    references tblnacionalidade (idNacionalidade)
);

create table tblAtorNacionalidade (
	idAtorNacionalidade int not null auto_increment,
    idAtor int not null,
    idNacionalidade int not null,
    unique key (idAtorNacionalidade),
    primary key (idAtorNacionalidade),
    
    
    constraint FK_Ator_AtorNacionalidade
    foreign key (idAtor)
    references tblAtores(idAtor),
    
     constraint FK_Nacionalidade_AtorNacionalidade 
    foreign key (idNacionalidade) 
    references tblnacionalidade (idNacionalidade) 
);











show tables;
desc tblsexo;