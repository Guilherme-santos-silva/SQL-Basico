--definindo qual banco usar
use Banco_Estudos

--UNION
--juntar dois selects
--permite combinar duas ou mais declarações select
--deve ter o mesmo numero de colunas e o mesmo tipo de dados

select Nome_Autor from tbl_Autores 
union
select Nome_Livro from tbl_Livros
