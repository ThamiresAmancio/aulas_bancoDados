/*VIEWS EM BANCO DE DADOS*/

/*Criando uma View*/
create view vwFilmesAtoresDiretores
	as 
		select 	tblFilmes.nome as nomeFilme, tblFilmes.sinopse, tblFilmes.qtde,
				tblFilmes.duracao,
				tblGenero.nome as nomeGenero, 
				tblClassificacao.nome as nomeclassificacao,
				tblAtores.nome as nomeAtor,
				tblPremiacoesAtor.nome as nomePremiacaoAtor,
				tblPremiacoesFilme.nome as nomePremiacaoFilme,
				tblSexo.sigla, tblSexo.descricao,
				tblDiretores.nome as nomeDiretor
		from tblFilmes
				inner join tblFilmeGenero
					on tblFilmes.idFilme = tblFilmeGenero.idFilme
				inner join tblGenero
					on tblGenero.idGenero = tblFilmeGenero.idGenero
				inner join tblClassificacao
					on tblClassificacao.idClassificacao = tblFilmes.idClassificacao
				inner join tblFilmeAtor
					on tblFilmes.idFilme = tblFilmeAtor.idFilme
				inner join tblAtores
					on tblAtores.idAtor = tblFilmeAtor.idAtor
				left join tblAtorPremiacao
					on tblAtores.idAtor = tblAtorPremiacao.idAtor
				left join tblPremiacoes as tblPremiacoesAtor
					on tblPremiacoesAtor.idPremiacao = tblAtorPremiacao.idPremiacao
				inner join tblFilmeDiretor
					on tblFilmes.idFilme = tblFilmeDiretor.idFilme
				inner join tblDiretores
					on tblDiretores.idDiretor = tblFilmeDiretor.idDiretor
				inner join tblSexo
					on tblSexo.idSexo = tblAtores.idSexo
				left join tblFilmePremiacao
					on tblFilmes.idFilme = tblFilmePremiacao.idFilme
				left join tblPremiacoes as tblPremiacoesFilme
					on tblPremiacoesFilme.idPremiacao = tblFilmePremiacao.idPremiacao
			;
            
/*Visualizar as tabelas e as views existentes no BD*/            
show tables;

/*Executando uma View*/
select * from vwFilmesAtoresDiretores;

/*Alterando uma View*/
alter view vwFilmesAtoresDiretores
	as 
		select 	tblFilmes.nome as nomeFilme, tblFilmes.sinopse, tblFilmes.qtde,
				tblFilmes.duracao,
				tblGenero.nome as nomeGenero, 
				tblClassificacao.nome as nomeclassificacao,
				tblAtores.nome as nomeAtor,
				tblPremiacoesAtor.nome as nomePremiacaoAtor,
				tblPremiacoesFilme.nome as nomePremiacaoFilme,
				tblSexo.descricao as sexo,
				tblDiretores.nome as nomeDiretor
		from tblFilmes
				inner join tblFilmeGenero
					on tblFilmes.idFilme = tblFilmeGenero.idFilme
				inner join tblGenero
					on tblGenero.idGenero = tblFilmeGenero.idGenero
				inner join tblClassificacao
					on tblClassificacao.idClassificacao = tblFilmes.idClassificacao
				inner join tblFilmeAtor
					on tblFilmes.idFilme = tblFilmeAtor.idFilme
				inner join tblAtores
					on tblAtores.idAtor = tblFilmeAtor.idAtor
				left join tblAtorPremiacao
					on tblAtores.idAtor = tblAtorPremiacao.idAtor
				left join tblPremiacoes as tblPremiacoesAtor
					on tblPremiacoesAtor.idPremiacao = tblAtorPremiacao.idPremiacao
				inner join tblFilmeDiretor
					on tblFilmes.idFilme = tblFilmeDiretor.idFilme
				inner join tblDiretores
					on tblDiretores.idDiretor = tblFilmeDiretor.idDiretor
				inner join tblSexo
					on tblSexo.idSexo = tblAtores.idSexo
				left join tblFilmePremiacao
					on tblFilmes.idFilme = tblFilmePremiacao.idFilme
				left join tblPremiacoes as tblPremiacoesFilme
					on tblPremiacoesFilme.idPremiacao = tblFilmePremiacao.idPremiacao
			;

/*Apagando uma View*/
drop view vwFilmesAtoresDiretores;
