--definindo qual banco usar
use Banco_Estudos

--TOP
--usados para especificar o numero de registros a retornar
--util para tabelas com muitos registros

select * from tbl_Livros

--selecionando o porcentual de uma tabela, nesse caso 10% devemos especificar a coluna sempre
select top 10 percent Nome_Livro from tbl_Livros

--seleciona os 2 primeiros registros
select top 2 Nome_Livro from tbl_Livros