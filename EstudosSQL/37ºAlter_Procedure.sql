--definindo qual banco usar
use Banco_Estudos

--ALTERANDO PROCEDURE
--podemos alterar procedura com alter procedure

--primeiro criamos a procedure
create procedure Alterar_Procedure as select * from tbl_Livros

--executamos para vermos
exec Alterar_Procedure

--alteramos a procedure
alter procedure ALterar_Procedure as select * from tbl_Livros where ID_Livro = 100

--executamos para vermos a procedure alterada
exec Alterar_Procedure