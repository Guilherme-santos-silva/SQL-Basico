--definindo qual banco usar
use Banco_Estudos

--AS
--podemos alterar o nome de uma coluna na hora do select

--mudando numero de duas colunas
select 
Nome_Livro as 'Livro', 
ID_Autor as 'Autor'
from tbl_Livros

--mudando nome de uma coluna
select 
Nome_Livro as 'Livro'
from tbl_Livros

--mudando nome de varias colunas
select 
ID_Livro as 'Codigo', 
Nome_Livro as 'Livro', 
ISBN as 'isbn', 
Data_Pub as 'Data', 
Preco_Livro as 'Preço', 
ID_Autor as 'Autor', 
ID_Editora as 'Editora'
from tbl_Livros