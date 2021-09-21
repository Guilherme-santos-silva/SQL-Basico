--definindo qual banco usar
use Banco_Estudos

--ORDER BY
--order by ordena os dadosd de uma tebela sendo desc como decresente e asc como ascendente

--usando o roder by na coluna Nome_Livro de forma descendente
select * from tbl_Livros order by Nome_Livro desc

--usando o roder by na coluna Nome_Livro de forma ascendente
select * from tbl_Livros order by Nome_Livro asc

--usando order by em uma coluna especifica
select Nome_Livro from tbl_Livros order by Nome_Livro asc

--usando order by na tabela toda e organizando pelo preço do livro
select * from tbl_Livros order by Preco_Livro asc