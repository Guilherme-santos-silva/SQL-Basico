--definindo qual banco usar
use Banco_Estudos

--VIEW
--tabela de para vermos mais rapido, podemos economizar tempo com views inves de ficar fazendo selects longos
--tabela virtual, pode receber joins, where etc. como uma tabela normal
--mostra os dados sempre atualizados

--criando a view
create view vw_LivrosAutores 
as select tbl_Livros.Nome_Livro as Livros,
tbl_Autores.Nome_Autor as Autor
from tbl_Livros inner join tbl_Autores
on tbl_Livros.ID_Autor = tbl_Autores.ID_Autor

--na aba de Pesquisador de Objetos na pasta exibições podemos ver todas as nossas views

--selecionando a view
select * from vw_LivrosAutores 

--usando clausulas na view
select * from vw_LivrosAutores where Livros like '%S%'

--alterando a view 
alter view vw_LivrosAutores as
select tbl_Livros.Nome_Livro as Livros, 
tbl_Autores.Nome_Autor as Autor,
tbl_Livros.Preco_Livro as Valor
from tbl_Livros inner join tbl_Autores
on tbl_Livros.ID_Autor = tbl_Autores.ID_Autor

--selecionando a view
select * from vw_LivrosAutores

--apagando view 
drop view vw_LivrosAutores


--criando view simples
create view vw_Livros as select tbl_Livros.Nome_Livro from tbl_Livros

alter view vw_Livros as select tbl_Livros.Nome_Livro as Livros, tbl_Livros.Preco_Livro as Preco from tbl_Livros

--selecionando a view
select * from vw_Livros

--apagando a view
drop view vw_Livros

