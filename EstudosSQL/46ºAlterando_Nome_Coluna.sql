--definindo qual banco usar
use Banco_Estudos

--ALTERAR NOME DA TABELA E NOME DA COLUNA	

--podemos ver todos as tabelas que existem no nosso banco
select * from sys.tables
select * from tbl_Livros
--alterando coluna da tabela
--sp_rename 'Nome_Tabela.Nome_Atual_Coluna','Novo_Nome_Coluna','Column'

--alterando a coluna Nome_Livros para Livro
sp_rename 'tbl_Livros.Nome_Livro','Livro','Column'

--alterando a coluna Livros para Nome_Livro
sp_rename 'tbl_Livros.Livro','Nome_Livro','Column'

--alterando nome da tabela
--sp_rename 'Nome_Tabela_Atual','Novo_Nome_Tabela'



