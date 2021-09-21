--definindo qual banco usar
use Banco_Estudos

--FUNCAO COM VALOR DE TABELA EMBUTIDA
--podemos usar parametros e retorna um valor maior de dados

--criamos a fuñção
create function Retorna_Itens 
--definimos seus parametros
(@Valor Real)
--usamos o returns para retornar nossa tabela
returns table
as
	--iniciamos nosso select
	return
		(
			--fazemos um inner join usaando as colunas Nome_Livro, Nome_Autor e Nome_Editora das tabelas Livros, Autores e Editoras
			Select Livro.Nome_Livro, Autor.Nome_Autor, Editora.Nome_Editora
			from tbl_Livros as Livro
			inner join tbl_Autores as Autor
			on Livro.ID_Autor = Autor.ID_Autor
			inner join tbl_Editoras as Editora
			on Livro.ID_Editora = Editora.ID_Editora
			--retornamos o parametro a ser usado
			where Livro.Preco_Livro > @Valor
		)

--acessando nossa função, como é formato de tabela podemos escolher as colunas que queremos ver, e definimos o parametro a ser usado
select Nome_Livro, Nome_Autor from Retorna_Itens (60.00)

--acessando nossa tabela sem definir colunas e passamos o parametro a ser usado
select * from Retorna_Itens (60.00)