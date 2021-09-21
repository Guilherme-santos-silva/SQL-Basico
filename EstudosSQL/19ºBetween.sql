--definindo qual banco usar
use Banco_Estudos

--BETWEEN	
--responsavel por selecionar intervalos
--usado junto com where

--primeiro temos uma visao geral da tabela
select * from tbl_Livros

--fazemos between e pegamos os dados da coluna Data_Pub de 2000.12.21 até 2204.05.17
select * from tbl_Livros where Data_Pub between '20001221' and '20040517'

--fazemos between e pegamos os dados da coluna Preco_Livro de 45.30 até 65.45
select * from tbl_Livros where Preco_Livro between '45.30' and '65.45'

--podemos fazer between não necessariamente com valores que temos na tabela, nssse caso começamos com 0 um valor que nao tem na tabela
select * from tbl_Livros where Preco_Livro between '0' and '46'