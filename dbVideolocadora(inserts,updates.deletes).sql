/*INSERTS,UPDATES,DELETES*/
/*TDOS OS TIPOS DE DADOS QUE ESTIVER NO BD(ATRIBUTOS) TEM QUE SER COLOCADO COM ASPAS SIMPLES, EXECETO OS ATRIBUTOS DO TIPO INTEIRO */

/*Inserte tblGenero (valores individual)*/

use dbVideoLocadoraTB;

insert into tblGenero (nome) values
 ('Drama');
 
/*Inserte tblGenero (Multíplos valores)*/
insert into tblGenero (nome) values
 ('Terror'),
('Ação'),
('Ficção'),
('Suspenso'),
('Romance'),
('Comédia'),
('Animação'),
('musical'),
('aventura'),
('documentário')
;

/*Insert na tblClassificação*/

insert into tblClassificacao(nome) values

('Maior de 10'),
('Maior de 12'),
('Maior de 14'),
('Maior de 16'),
('Maior de 18'),
('Livre'),
('Infantil');

/*Insert na tblNacionalidade*/

insert into tblNacionalidades(nome) values('Espanhola');

/*Insert na tblFilmes*/

insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('O Poderoso Chefão','Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo).',
'02:55:00',20,'1972-03-24',3,5);


insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('A LISTA DE SCHINDLER','A inusitada história de Oskar Schindler (Liam Neeson), um sujeito oportunista, sedutor, "armador", simpático, comerciante no mercado negro, mas, acima de tudo, um homem que se relacionava muito bem com o regime nazista, tanto que era membro do próprio Partido Nazista (o que não o impediu de ser preso algumas vezes, mas sempre o libertavam rapidamente, em razão dos seus contatos). No entanto, apesar dos seus defeitos, ele amava o ser humano e assim fez o impossível, a ponto de perder a sua fortuna mas conseguir salvar mais de mil judeus dos campos de concentração.
','03:15:00',12,'2019-03-01',2,5
	);
    
    
insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('Um sonho de Liberdade',
'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine',
'02:20:00',
5,
'1995-01-25',
4,
3
);

insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('O rei leaõ',
'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
'01:29:00',
20,
'2011-08-26',
3,
6
);


insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('FORREST GUMP - O CONTADOR DE HISTÓRIAS',
'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
'02:20:00',
20,
'1994-12-07',
4,
4
);


insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('VINGADORES: ULTIMATO',
'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.
',
'03:01:00',
15,
'2019-07-11',
3,
2
);


insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('Vingadores - Guerra Infinita',
'Sauron planeja um grande ataque a Minas Tirith, capital de Gondor, o que faz com que Gandalf (Ian McKellen) e Pippin (Billy Boyd) partam para o local na intenção de ajudar a resistência. Um exército é reunido por Theoden (Bernard Hill) em Rohan, em mais uma tentativa de deter as forças de Sauron. Enquanto isso Frodo (Elijah Wood), Sam (Sean Astin) e Gollum (Andy Serkins) seguem sua viagem rumo à Montanha da Perdição, para destruir o Um Anel.',
'03:21:00',
20,
'2003-12-25',
3,
6
);


insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('O  poderoso chefão 2',
'nício do século XX. Após a máfia local matar sua família, o jovem Vito (Robert De Niro) foge da sua cidade na Sicília e vai para a América. Já adulto em Little Italy, Vito luta para ganhar a vida (legal ou ilegalmente) e manter sua esposa e filhos. ',
'03:20:00',
15,
'1974-07-20',
3,
5
);


insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('O auto da Compadecida',
'As aventuras dos nordestinos João Grilo (Matheus Natchergaele), um sertanejo pobre e mentiroso, e Chicó (Selton Mello), o mais covarde dos homens. Ambos lutam pelo pão de cada dia e atravessam por vários episódios enganando a todos do pequeno vilarejo de Taperoá, no sertão da Paraíba. ',
'01:35:00',
7,
'2000-09-10',
1,
2
);


insert into tblFilmes(nome, sinopse, duracao, qtde, dataLancamento,idNacionalidade, idClassificacao)values
('O  toy story 3',
'Em Toy Story 3, Andy (John Morris) tem 17 anos e está prestes a ir para a faculdade. Desta forma, precisa arrumar o quarto e definir o que irá para o lixo e o que será guardado no sótão. Seus antigos brinquedos, entre eles Buzz Lightyear (Tim Allen), Jessie (Joan Cusack) e o Sr. Cabeça de Batata (Don Rickles), são separados para serem guardados no sótão. Entretanto, uma confusão faz com que a mãe de Andy os coloque no lixo. Woody (Tom Hanks), que será levado por Andy para a faculdade, decide salvá-los.',
'01:40:00',
15,
'2010-06-18',
3,
6
);

/*Insert na tblFilmeAtor*/
insert into tblFilmeAtor (idFilme,idAtor) values(1,1);
insert into tblFilmeAtor (idFilme,idAtor) values(2,2);
insert into tblFilmeAtor (idFilme,idAtor) values(3,3);
insert into tblFilmeAtor (idFilme,idAtor) values(4,3);
insert into tblFilmeAtor (idFilme,idAtor) values(5,4);
insert into tblFilmeAtor (idFilme,idAtor) values(6,3);
insert into tblFilmeAtor (idFilme,idAtor) values(7,2);
insert into tblFilmeAtor (idFilme,idAtor) values(10,3);
insert into tblFilmeAtor (idFilme,idAtor) values(11,2);
insert into tblFilmeAtor (idFilme,idAtor) values(12,1);



/*Insert na tblAtorNacionalidade*/
insert into tblAtorNacionalidade (idAtor,idNacionalidade) values(1,3);
insert into tblAtorNacionalidade (idAtor,idNacionalidade) values(1,4);
insert into tblAtorNacionalidade (idAtor,idNacionalidade) values(1,3);
insert into tblAtorNacionalidade (idAtor,idNacionalidade) values(1,3);

/*Insert na tblAtorPremiacao*/
insert into tblAtorPremiacao (nome,dataNascimento,nomeArtistico,idAtor,idPremiacao) values('Marlon Brando','1939-04-07','Marlon',1,2);
insert into tblAtorPremiacao (nome,dataNascimento,nomeArtistico,idAtor,idPremiacao) values('Liam Nesson','1949-12-18','Li',2,2);
insert into tblAtorPremiacao (nome,dataNascimento,nomeArtistico,idAtor,idPremiacao) values('Robert Downey Jr..','1949-06-29','Rob',3,2);
insert into tblAtorPremiacao (nome,dataNascimento,nomeArtistico,idAtor,idPremiacao) values('Tom Hanks','1952-05-14','Tom',1,2);


/*Insert na tblFilmeDiretor*/
insert into tblFilmeDiretor (idFilme,idDiretor) values(1,1);
insert into tblFilmeDiretor (idFilme,idDiretor) values(2,4);
insert into tblFilmeDiretor (idFilme,idDiretor) values(3,3);
insert into tblFilmeDiretor (idFilme,idDiretor) values(4,2);
insert into tblFilmeDiretor (idFilme,idDiretor) values(5,1);
insert into tblFilmeDiretor (idFilme,idDiretor) values(6,3);
insert into tblFilmeDiretor (idFilme,idDiretor) values(7,2);
insert into tblFilmeDiretor (idFilme,idDiretor) values(10,3);
insert into tblFilmeDiretor (idFilme,idDiretor) values(11,1);
insert into tblFilmeDiretor (idFilme,idDiretor) values(12,1);

/*Insert na tblDiretorNacionalidade*/
insert into tblDiretorNacionalidade (idDiretor,idNacionalidade) values(1,3);
insert into tblDiretorNacionalidade (idDiretor,idNacionalidade) values(2,3);
insert into tblDiretorNacionalidade (idDiretor,idNacionalidade) values(3,3);
insert into tblDiretorNacionalidade (idDiretor,idNacionalidade) values(4,3);


/*Insert na tblFilmeGenero*/
insert into tblFilmeGenero (idFilme,idGenero) values(1,3);
insert into tblFilmeGenero (idFilme,idGenero) values(2,10);
insert into tblFilmeGenero (idFilme,idGenero) values(3,11);
insert into tblFilmeGenero (idFilme,idGenero) values(4,8);
insert into tblFilmeGenero (idFilme,idGenero) values(5,6);
insert into tblFilmeGenero (idFilme,idGenero) values(6,1);
insert into tblFilmeGenero (idFilme,idGenero) values(7,1);
insert into tblFilmeGenero (idFilme,idGenero) values(10,7);
insert into tblFilmeGenero (idFilme,idGenero) values(11,8);
insert into tblFilmeGenero (idFilme,idGenero) values(12,3);

/*Insert na tblFilmeEstudio*/
insert into tblFilmeEstudio (idFilme,idEstudio,idPorte) values(1,3,3);

/*Insert na tblFilmePremicao*/
insert into tblFilmePremiacao (qtdeIndicacao,idFilme,idPremiacao) values(1,5,1);
insert into tblFilmePremiacao (qtdeIndicacao,idFilme,idPremiacao) values('5',2,1);
insert into tblFilmePremiacao (qtdeIndicacao,idFilme,idPremiacao) values('5',10,1);



/*Insert na tblAtores*/
insert into tblAtores (nome,dataNascimento,nomeArtistico,idSexo) values('Marlon Brando','1939-04-07','Marlon',2);
insert into tblAtores (nome,dataNascimento,nomeArtistico,idSexo) values(' Liam Neeson','1949-12-18','Li',2);
insert into tblAtores (nome,dataNascimento,nomeArtistico,idSexo) values('Robert Downey Jr.,','1949-06-29','Rob',2);
insert into tblAtores (nome,dataNascimento,nomeArtistico,idSexo) values(' Tom Hanks','1952-05-14','Tom',2);

/*Insert na tblDiretores*/
insert into tblDiretores (nome,dataNascimento,idSexo) values('Francis Ford Coppola','1939-04-07',2);
insert into tblDiretores (nome,dataNascimento,idSexo) values(' Steven Spielberg','1949-12-18',2);
insert into tblDiretores (nome,dataNascimento,idSexo) values(' Roger Allers,','1946-06-29',2);
insert into tblDiretores (nome,dataNascimento,idSexo) values('Robert Zemeckis','1952-05-14',2);


/*Insert na tblEstudio*/
insert into tblEstudios (nome) values('Warner Bros');
insert into tblEstudios (nome) values('Walt Disney Pictures');
insert into tblEstudios (nome) values('Universal Studios');
insert into tblEstudios (nome) values('Sony');
insert into tblEstudios (nome) values('Paramout Motion Pictures Group');
insert into tblEstudios (nome) values('O2 Filmes');
insert into tblEstudios (nome) values('Taiga Filmes');

/*Insert na tblPorte*/

insert into tblPorte (tipoPorte) values('Pequeno');
insert into tblPorte (tipoPorte) values('Médio');
insert into tblPorte (tipoPorte) values('Grande');

/*Insert na tblPremiação*/

insert into tblPremiacoes (nome) values('Filme do Ano');
insert into tblPremiacoes (nome) values('Ator do Ano');
insert into tblPremiacoes (nome) values('Diretor do Ano');


/*Insert na tblSexo*/

insert into tblSexo (sigla,descricao) values('F','Feminino');
insert into tblSexo (sigla,descricao) values('M','Masculino');




/*Update de dados nas tabelas*/

update tblFilmes set qtde = 25
	where idFilme = 1;
    
    
    /*Delete de dados nas tabelas*/
    delete from tblAtorNacionalidade  where idAtorNacionalidade = 2;

select * from tblAtorPremiacao;
select * from tblAtorNacionalidade;
select * from tblDiretorNacionalidade;
select * from tblFilmeAtor;
select * from tblAtores;   
select * from tblFilmeDiretor;
select * from tblDiretores;
select * from tblFilmeEstudio;
select * from tblEstudios;
select * from tblFilmeGenero;
select * from tblFilmePremiacao;
select * from tblPorte;
select * from tblPremiacoes;
select * from tblSexo;
select * from tblFilmes;
select * from tblGenero;
select * from tblClassificacao;
select * from tblNacionalidades;

