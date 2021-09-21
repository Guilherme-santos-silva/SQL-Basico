--definindo qual banco usar
use Banco_Estudos

--FUNCAO COM VALOR DE TABELA EMBUTIDA VARIAS INSTRUÇÕES
--podemos usar parametros e retorna um valor maior de dados

--criamos a função sem parametros
create function Multi_Tabela()
--ira retorna a variavel @Valores do tipo tabela
Returns @Valores table
	--definimos os campos da variavel tabela
	(
		Nome_Livro varchar(50),
		Data_Pub datetime,
		Nome_Editora varchar(50),
		Preco_Livro Money
	)
as
--iniciamos o bloco de codigo
begin
--criamos um insert das colunas da nossa varuvel
insert @Valores (Nome_Livro, Data_Pub, Nome_Editora, Preco_Livro)
	--com os dados das nossas tabelas
	select Livro.Nome_Livro, Livro.Data_Pub, Editora.Nome_Editora, Livro.Preco_Livro
	from tbl_Livros as Livro
	inner join tbl_Editoras as Editora
	on Livro.ID_Editora = Editora.ID_Editora
--definimos que queremos return
return
--terminaos nossa fuñção
end

--acessando nossa função
select * from Multi_Tabela()