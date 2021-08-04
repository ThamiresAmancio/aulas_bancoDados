/*SELECT - TRABALHANDO COM STRINGS E DATA E HORA*/
use dbvideolocadora;
/*
AS - PERMITE ALTERAR VIRTUALMENTE  A NOMENCLATURA DAS COLUNAS 
CONCAT - CONCATENAÇÃO DE STRING(TEXTOS)*/

select nome as nome_filme ,duracao,qtde,dataLancamento,sinopse,
	concat('O filme:', nome , 'tem duração:',duracao) as texto_filmes from tblFilmes;
    

/*CONCAT_WS  PERMITE CONCATENAR DADOS UTILIZANDO UM SEPRADOR ENTRE OS ATRIBUTOS*/
select nome, duracao, 
concat_ws('-',nome, duracao),
concat(nome, ';', duracao ,'-' , qtde) as texto_filme from tblFilmes; 

/*LOCATE  PERMITE LOCALIZAR ALGUM CARACTER DENTRO DE UM ,
 ATRIBUTOS ELE RETORNA A POSIÇÃO DESSE CARACTER*/
select locate('O', nome) as posicao from tblFilmes;


/*REVERSE PERMITE REVERTER A ESCRITA DE UM ATRIBUTOS */
select reverse(nome) as nome_revertido from tblFilmes;

/*LENGTH PERMITE CONTAR A QTDE DE CARACTERES EM UM ATRIBUTO*/
select nome, length(nome) as qtdCaracteres, sinopse, length(sinopse) as qtdSinopse from tblFilmes;

/*SUBSTR permite cortar ou quebrar um conjunto de caracteres*/
select concat(substr(sinopse,1,100),'...') as sinopsereduzida from tblFilmes;


/*INSERT permite inserir um contexto dentro da escrita do atrbuto*/
select insert(sinopse,20,5, ' SENAI ' ) as novo_texto from tblFilmes;


/*UPPER(MAIUSCULO) / LOWER(MINUSCULO)*/

select upper(nome) as textoMaiusculo, lower(nome) as textoMinusculo from tblFilmes;
/*DESAFIO*/
select concat(upper(substr(nome,1,1)), 
	substr(lower(nome),2,length(nome)-1))
		from tblFilmes;
        
        
        
  /*TRABALHANDO COM DATA*/      
  
  /*Resgatando a data atual do servidor */
  select curdate();
  select current_date();
  
  /*Resgatando a hora atual do servidor */
  select curtime();
  select current_time();
  

/*Restando a hora e  data atual do servidor*/  
select current_date() dataAtual, current_time() as HoraAtual;
select current_timestamp() as dataHoraAtual;

/*Retorna em formato AM ou PM*/
select time_format(current_time(), '%r') as horaAtual;


/*Força a saída de 00 a 23*/
select time_format(current_time(), '%T') as horaAtual;


/*Funções de formatação de HORA*/

/*Time_format
	%H - Hora (00-23)
    %h - Hora (00-12)
    %i - Minuto 
    %s - segundo 
    %r - hora seguido AM ou PM
    %T - força a hora em formato 24h
    
*/
/*Retorna somente a hora*/
select time_format(current_time(), '%H') as horaAtual;
/*Retorna somente a minutos*/
select time_format(current_time(), '%i') as horaAtual;
/*Retorna somente a segundos*/
select time_format(current_time(), '%s') as horaAtual;

select time_format(current_time(), '%h:%i') as horaAtual;


/*FUNÇÕES HOUR(), MINUTE (), second()*/

select hour(current_time()) as hora;
select minute(current_time()) as minutos;
select second(current_time()) as segundos;


/*FUNÇÕES PARA TRABALHAR COM A DATA */
/*

	%d - retorna o dia 
    %m - retorna o mês 
    %y - retorno o ano em 2 digitos
    %Y - retorna o ano em 4 digitos
    %a - retorna o  dia da semana por extenso abreviado
    %W - dia da semana por extenso
    %w - retorna o dia da semana em números (1=segundas, 2=terça....)
    %M - retorna o mes por extenso 
    %b- retorna o mês por extenso abreviado 
*/
select date_format(current_date(), '%M') as dataAtual;


/*FUNÇÕES DAY(), MONTH(), YEAR()*/


select day(current_date()) as dia;
select month(current_date()) as mes;
select year(current_date()) as ano;

/*FUNÇÕES DATE(), TIME()*/
select date(current_timestamp()) as dataAtual;
select time(current_timestamp()) as HoraAtual;


/*DIFERENÇA ENTRE HORAS */

select timediff('10:00:00','15:00:00') as diferencas;
/*DIFERENÇA ENTRE DATAS */
select datediff('2021-06-28','2021-06-29')* -1 as qtdeDiarias,  
	concat('R$', ((datediff('2021-05-29', '2021-06-29'))*20)*-1) as ValorPagto;

select 10+10 as soma;
select 10-5 as sub;
select 10*10 as mult;
select 10/5 as divisao;










   