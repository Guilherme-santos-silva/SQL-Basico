--definindo qual banco usar
use Banco_Estudos

--UPDATE

--UPDATE nome da tabela
--SET coluna = novo valor
--WHERE filtro

select * from tbl_Livros

select * from tbl_Autores

--mudando o valor do livro
update tbl_Livros
set Preco_Livro = 65.45
where ID_Livro = 102

--mudando sobrenome do autor
update tbl_Autores
set Sobrenome_Autor = 'Cartman'
where ID_Autor = 2

--mudando mais de um valor de uma vez
update tbl_Livros
set Preco_Livro = 80.00, ISBN = '0202020'
where ID_Livro = 101