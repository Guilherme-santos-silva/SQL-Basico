--definindo qual banco usar
use Banco_Estudos

--SELECT
--select NOME DA COLUNA from TABELA
--select com * tras tudo da tabela

--selecionando somente uma coluna de uma tabela
select Nome_Autor from tbl_Autores

--selecionando a tabela toda
select * from tbl_Autores

--selecionando mais de uma coluna
select Nome_Livro, ID_Autor from tbl_Livros

--fazendo um select por ordem alfabetica da coluna Nome_Livro
select Nome_Livro, ISBN
from tbl_Livros
order by Nome_Livro