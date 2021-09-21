--definindo qual banco usar
use Banco_Estudos

--FUNÇÕES AGREGADAS
--count = conta quantidade de linhas/itens
--sum = soma total
--max = valor maximo
--min = valor minimo
--avg = media aritmetica


--fazemos um select para uma visao da tabela
select * from tbl_Livros

--fazendo uma contagem gera da tabela
select count(*) from tbl_Livros
--fazendo contagem de uma coluna especifica
select count(ID_Autor) from tbl_Livros
--fazendo contagem de uma coluna especifica usando where
select count(ID_Autor) from tbl_Livros where ID_Livro = 100

--somando o valor total da coluna
select sum(Preco_Livro) from tbl_Livros
--somando o valor total da coluna com where
select sum(Preco_Livro) from tbl_Livros where ID_Livro > 102

--retorna o valor maximo da coluna
select max(Preco_Livro) from tbl_Livros
--retorna o valor maximo da coluna com where
select max(Preco_Livro) from tbl_Livros where ID_Livro > 102

--retorna o valor minimo da coluna
select min(Preco_Livro) from tbl_Livros
--retorna o valor minimo da coluna com where
select min(Preco_Livro) from tbl_Livros where ID_Livro < 105

--retorna a media da coluna
select avg(Preco_Livro) from tbl_Livros
--retorna a media da coluna com where
select avg(Preco_Livro) from tbl_Livros where ID_Livro > 102

