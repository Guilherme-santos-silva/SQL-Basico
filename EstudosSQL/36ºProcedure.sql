--definindo qual banco usar
use Banco_Estudos

--PROCEDURE
--cria procedimentos armazenados para serem executados em uma subrotina
--um bloco de criação de procedure deve ser sempre usado sozinho, por isso temos os erros

--criando procedure responsavel por fazer um select simples
create procedure Procedure_Livros as select * from tbl_Livros

--na aba 'Pesquisador de Objetos' e dentro do nosso banco de dados podemos ver na pasta programação e procedimentos armazenados todas as procedures criadas

--usando a procedure
exec Procedure_Livros

--podemos ver o conteudo de texto usado na criação da procedure
exec sp_helptext Procedure_Livros

--criando procedure com o bloco criptografado assim impedindo alguem vela usando sp_helptext
create procedure Procedure_Livros_Criptografada with encryption as select * from tbl_Livros

--usando a procedure
exec Procedure_Livros_Criptografada

--como pdoemos ver a proc esta criptografada
exec sp_helptext Procedure_Livros_Criptografada

--apagando procedure
drop procedure Procedure_Livros
