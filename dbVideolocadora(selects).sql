/*SELECT*/

/*Visualiza todos os campos e todos os registros*/
select * from tblfilmes;

/*Visualizada apenas os campos selecionados e todos os registros*/
select nome,dataLancamento,sinopse from tblFilmes;

/*Não esquecer de colocar o nome da tabela para identificar de onde está vindo o campo selecionado. 
Geralemente utilizamos esse procedimento quando formos trabalhar com mais tabelas no mesmo select*/
select tblFilmes.nome,tblFilmes.dataLancamento,tblFilmes.sinopse from tblFilmes;

/*Buscando um filme utilizando o critérop de filtro pela PK*/
select * from tblFilmes where idFilme = 6;

/*Buscando o filme utilizando o filtro pela igualdade (=), 
neste tipo de filtro o que será buscado tem que estar exatamente 
igual a forma que foi cadastrado no banco de dados */
select * from tblFilmes where nome = 'A vida é uma festa';


/*Permite realizar buscas utilizando dormas diferentes de filtros like '' - tem 
o mesmo papel do (=), ou seja, precisa que a escrita esteja exatamente igual
 a forma que foi cadastrado no bano de dados*/
select * from tblFilmes where nome like  ' vida é uma festa';

/*like '%' - utilizando o simbolo de % no final da escrita , permite buscar registro
que começam com aquela escrita*/
select * from tblFilmes where nome like 'A vida%';

/*like '%' - utilizando o simbolo de % no inicio da escrita , permite buscar registro
que começam com aquela escrita*/

select * from tblFilmes where nome like '%festa';

/*like '%' - utilizando o simbolo de % no inicio e no final  da escrita , permite buscar registro
que tenham aquela palavra em qualquer parte do campo */
select * from tblFilmes where nome like '%festa%';


/*Ordenação de Resultados*/

select * from tblfilmes order by nome, dataLancamento asc; /*Ordenação Crescente*/
select * from tblfilmes order by nome desc; /*Ordenação Descrescente*/


/*OPERADORES DE COMPARAÇÃO

	=  IGUALDADE
    LIKE  BUSCA POR PEDAÇOS
    <  MENOR
    > MAIOR
    <= MENOR OU IGAUL
    >= MAIOR OUT IGUAL
    <> DIFERENTE
*/
select * from tblfilmes where  qtde < 10;#menor
select * from tblfilmes where  qtde <= 10;#menor ou igual
select * from tblfilmes where  qtde >= 10;#maior ou igual
select * from tblfilmes where  qtde > 10;#maior
select * from tblfilmes where  qtde <> 20;#diferente































































































































