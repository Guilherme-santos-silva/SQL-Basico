--definindo qual banco usar
use Banco_Estudos

--SELECT INTO
--seleciona dados de uma tabela e automaticamente ja cria e insere em outra usando como base o tipo das colunas e regras da coluna na qual foram pegos os dados
--util para backup

--primeiro fazemos um select da nossa tabela principal
select * from tbl_Livros

--entao fazemos um select com as colunas que queremos inserir na nova tabela
select ID_Livro, Nome_Livro, ISBN
--definimos o nome da nova tabela
into Livro_SBN
--derinimos da onde os dados serao pegos
from tbl_Livros
--definimos um filtro
where Preco_Livro > 66.80

--podemos ver a tabela criada
select * from Livro_SBN


--criando backup exemplo
select * from tbl_Livros

select ID_Livro, Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora
into tbl_Livros_Backup
from tbl_Livros

select * from tbl_Livros_Backup