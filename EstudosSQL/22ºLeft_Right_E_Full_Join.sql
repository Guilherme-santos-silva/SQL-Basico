--definindo qual banco usar
use Banco_Estudos

--LEFT, RIGHT E FULL JOINS

--LEFT: retorna todas as linhas da tabela a esquerda, mesmo se nao houver nenhuma correspondencia na tabela a direita
select * from tbl_Autores left join tbl_Livros on tbl_Livros.ID_Autor = tbl_Autores.ID_Autor

--RIGHT: retorna todas as linhas da tabela a direita, mesmo se nao houver nenhuma correspondencia na tabela a esquerda
select * from tbl_Autores right join tbl_Livros on tbl_Livros.ID_Autor = tbl_Autores.ID_Autor

--FULL: retorna todas as linhas quando houver uma correspondencia em qualquer uma das tabelas, é uma combinação entre LEFT e RIGHT
select * from tbl_Autores full join tbl_Livros on tbl_Livros.ID_Autor = tbl_Autores.ID_Autor


