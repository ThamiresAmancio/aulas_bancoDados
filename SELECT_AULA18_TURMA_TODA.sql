/*RELACIONAMENTO ENTRE TABELAS*/

/*Primeiro tipo - Relacionamento realizado no WHERE*/
use dbvideolocadoratb;

select tblFilmes.nome, tblFilmes.qtde, tblFilmes.sinopse, 
	   tblClassificacao.nome as nomeClassificacao,
	   tblGenero.nome as nomeGenero	
	from tblFilmes, tblClassificacao, tblGenero, tblFilmeGenero
          /*Fazemos o relacionamento entre as tabelas (PK e FK)*/
    where tblClassificacao.idClassificacao = tblFilmes.idClassificacao
		and tblFilmes.idFilme  = tblFilmeGenero.idFilme
        and tblGenero.idGenero = tblFilmeGenero.idGenero
        /*Critério de Busca (Filtro)*/
        and tblFilmes.idFilme = 6 
        order by nomeGenero desc;


select * from tblfilmes where sinopse like '%luta%';
select * from tblClassificacao;
select * from tblGenero where idGenero = 11;
select * from tblFilmeGenero where idFilme = 6;

/*Operadores Lógicos
	AND - E
    OR  - OU
    NOT - NÃO

*/

/*Segundo tipo - Relacionamento utilizando INNER JOIN (Melhor Perfomance)*/
    
select tblFilmes.nome, tblFilmes.qtde, tblFilmes.sinopse, 
	   tblClassificacao.nome as nomeClassificacao,
	   tblGenero.nome as nomeGenero
       
     /*Relacionamento entre tabelas (PK e FK)*/  
from  tblClassificacao 
		inner join tblFilmes
			on tblClassificacao.idClassificacao = tblFilmes.idClassificacao
        inner join tblFilmeGenero
			on tblFilmes.idFilme = tblFilmeGenero.idFilme
        inner join tblGenero
			on tblGenero.idGenero = tblFilmeGenero.idGenero

	/*Critério de busca (filtro)*/
where tblFilmes.idFilme = 6;


/*Relacionamento utilizando LEFT JOIN*/

/*Exemplo left join*/
select tblFilmes.nome as nomeFilme, tblClassificacao.nome as nomeClassificacao
from tblClassificacao 
	 left join tblFilmes
		on tblClassificacao.idClassificacao = tblFilmes.idClassificacao;

/*Exemplo right join*/
select tblFilmes.nome as nomeFilme, tblClassificacao.nome as nomeClassificacao
from tblClassificacao 
	 right join tblFilmes
		on tblClassificacao.idClassificacao = tblFilmes.idClassificacao;
/*
	INNER JOIN - TRAZ SOMENTE O QUE ESTIVER RELACIONADO ENTRE AS DUAS TABELAS
    
	LEFT  JOIN - TRAZ O QUE ESTIVER RELACIONADO ENTRE AS DUAS TABELAS E 
              O QUE TEM NA TABELA DA ESQUERDA, QUE NÃO FOI RELACIONADO COM 
              A TABELA DA DIREITA
              
	RIGHT JOIN - TRAZ O QUE ESTIVER RELACIONADO ENTRE AS DUAS TABELAS E 
              O QUE TEM NA TABELA DA DIREITA, QUE NÃO FOI RELACIONADO COM 
              A TABELA DA ESQUERDA


*/