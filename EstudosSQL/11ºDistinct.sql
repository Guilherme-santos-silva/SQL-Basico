--definindo qual banco usar
use Banco_Estudos

--DISTINCT
--usamos para tirar valores duplicados de um select


--primeiro podemos ver o select completo
select * from tbl_Livros

--select da coluna a qual temos os valores duplicados
select ID_Autor from tbl_Livros

--usamos o distinct e podemos ver os valores de forma unica
select distinct ID_Autor from tbl_Livros

