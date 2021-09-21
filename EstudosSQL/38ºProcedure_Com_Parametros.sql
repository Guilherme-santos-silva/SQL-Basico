--definindo qual banco usar
use Banco_Estudos

--PROCEDURE COM PARAMETROS

--PROCEDURE 1
--criamos a procedure com parametros
create procedure Procedure_Parametros 
(@ID int) as
select * from tbl_Livros where ID_Livro = @ID

--definimos qual o parametro que sera usado na procedure
--podemos definir os parametros por ordem de posição, no caso a primeira posição ja seria a @ID
exec Procedure_Parametros 100

--podemos definir os parametros por nome
exec Procedure_Parametros @ID = 100

--PROCEDURE 2
--varios parametros
create procedure Procedure_Varios_Parametros 
(@Nome varchar(30), @Idade int) as
begin
	select @Nome
	select @Idade
end

--temos dois selects porque na procedure existiram dois selects, para um só bastava concatenar
--definindo parametros por posição
exec Procedure_Varios_Parametros 'Guilherme', 20

--definindo parametros por nome
exec Procedure_Varios_Parametros @Nome = 'Guilherme', @Idade = 20

--PROCEDURE 3
create procedure Procedure_Conta
(@Quantidade int, @ID int) as
begin
	select ID_Livro, Nome_Livro, Preco_Livro * @Quantidade as 'Valor' from tbl_Livros where ID_Livro = @ID
end

--passando parametros por ordem
exec Procedure_Conta 10, 100

--passando parametros por nome
exec Procedure_Conta @Quantidade = 10, @ID = 100
