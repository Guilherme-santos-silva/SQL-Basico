--definindo qual banco usar
use Banco_Estudos

--INNER JOIN
--INNER JOIN: retorna a linha quando existe ambos correspondentes em ambas as tabelas

--primeiro podemos ver as tabelas soltas
select * from tbl_Autores
select * from tbl_Livros
select * from tbl_Editoras

--select * from TABELA 1 inner join TABELA 2 on TABELA 1.NOME COLUNA = TABELA 2.NOME COLUNA

--fazemos um select no qual selecionamos a intersecção que existe entre ID_Autor na tabela de Livros e ID_Autor na tabela de Autores
select * from tbl_Livros inner join tbl_Autores on tbl_Livros.ID_Autor = tbl_Autores.ID_Autor

--fazemos um select no qual selecionamos a intersecção que existe entre ID_Editora na tabela de Livros e ID_Editora na tabela de Editoras
select * from tbl_Livros inner join tbl_Editoras on tbl_Livros.ID_Editora = tbl_Editoras.ID_Editora