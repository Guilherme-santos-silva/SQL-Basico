--definindo qual banco usar
use Banco_Estudos

--CONCATENA��O DE STRINGS

--podemos concatenar strings com o sinal de concatena��o usando +
--string 1 | coluna + string 2 | coluna

--elecionando string
select 'guilherme' as 'Nome'

--concatenando duas strings
select 'guilherme' + 'santos' as 'Nome'

--concatenando duas colunas, usamos o ' ' para dar um espa�o entre os conteudos da coluna
select Nome_Autor + ' ' + Sobrenome_Autor as 'Nomes' from tbl_Autores

--concatenando coluna com strings
select 'Primeiro nome ' + Nome_Autor + ' e Segundo nome ' + Sobrenome_Autor as 'Nomes' from tbl_Autores