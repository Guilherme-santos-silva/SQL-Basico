--definindo qual banco usar
use Banco_Estudos

--WHERE
--usamos where para filtrar dados

--buscando na tabela na coluna Nome_Autor tudo que tenha Daniel
select * from tbl_Autores where Nome_Autor = 'Daniel'

--buscando na tabela na coluna ID_Editora todos os ID maiores que 3
select * from tbl_Editoras where ID_Editora > 3

--buscando na tabela Nome_Livro tudo que tiver nome Using Samba
select * from tbl_Livros where Nome_Livro = 'Using Samba'