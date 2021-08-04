/*INSERTS, UPDATES E DELETES*/
/*Insert tblGenero (um por vez)*/
insert into tblGenero
	(nome)
    values
    ('Aventura');
    
/*Insert tblGenero (multiplos valores)*/    
insert into tblGenero
	(nome)
    values
    ('Ficção'),
    ('Policial'),
    ('Terror'),
    ('Suspense'),
    ('Romance'),
    ('Comédia'),
    ('Animação'),
    ('Documentário');
    
    
/*Insert na tabela de Classificação*/
insert into tblClassificacao
	(nome)
    values
    ('Maior de 10'),
    ('Maior de 12'),
    ('Maior de 14'),
    ('Maior de 16'),
    ('Maior de 18'),
    ('Livre'),
    ('Infantil');
    
/*Insert na tabela de Nacionalidades*/
insert into tblNacionalidades
	(nome)
    values
    ('Brasileira'),
    ('Italiana'),
    ('Americana'),
    ('Inglesa');
    
/*Insert  na tabela de Filmes*/
insert into tblFilmes
	(nome, 
     sinopse, 
     duracao, 
     qtde, 
     dataLancamento, 
     idNacionalidade, 
     idClassificacao
     ) values
     ('O Poderoso Chefão',
      'Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). Porém, durante a festa, Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo "justiça", vingança na verdade contra membros de uma quadrilha, que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, que maltrataram a filha de Bonasera não serão mortos, pois ela também não foi, mas serão severamente castigados.',
      '02:55:00',
      10,
	  '1972-03-24',	
      3,
      5
     );


/*Update de dados nas tabelas*/
update tblFilmes set qtde=12
	where idFilme = 1;
    
/*Delete de dados nas tabelas*/
delete from tblGenero
	where idGenero = 10;

select * from tblGenero;
select * from tblFilmes;
select * from tblClassificacao;
select * from tblNacionalidades;