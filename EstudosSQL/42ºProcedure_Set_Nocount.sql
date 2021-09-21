--definindo qual banco usar
use Banco_Estudos

--PROCEDURE
--SET NOCOUNT ON
	
create procedure Procedure_Prova 
(
	@Quantidade int, 
	@Codigo int = -10, 
	@ID int
) 
as
--serve para evitar a contagem de linhas na aba mensagem
set nocount on
if @ID >= 10
	begin 
		select Nome_Livro as 'Livro', Preco_Livro * @Quantidade as 'Preço'
		from tbl_Livros
		where ID_Livro = @ID
		--usamos para ter certeza que deu certo o processamento, vemos na aba mensagem
		return 1
	end
else 
	return @Codigo


--recebe o valor de saida
declare @Cod int
--acessamos a procedure
exec @Cod = Procedure_Prova @ID = 102, @Quantidade = 10
print @Cod


