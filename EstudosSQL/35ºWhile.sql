--definindo qual banco usar
use Banco_Estudos

--laço de repetição
--contagem 0 a 10
--podemos fazer inserts com while

--iniciando exemplo

--criando variavel
declare
	@Valor int

--definindo valor
set @Valor = 0

--iniciando laço while
while @Valor < 10
	--iniciando bloco de codigos
	begin 
		--mostrando na tela o resultado
		print 'o valor é ' + cast(@Valor as varchar(10))
		--atribuindo valor a variavel
		set @Valor = @Valor + 1
	--terminando bloco de codigos
	end 
	select * from tbl_Livros

--while com select
declare
	@Codigo int

set @Codigo = 100

while @Codigo < 106
	begin
		select ID_Livro as 'ID', Nome_Livro as 'Livro', Preco_Livro as 'Preço' from tbl_Livros where ID_Livro = @Codigo
		set @Codigo =  @Codigo + 1
	end