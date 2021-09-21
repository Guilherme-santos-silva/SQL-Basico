--definindo qual banco usar
use Banco_Estudos

--FUNCAO VALOR ESCALAR
--retorna somente um valor

--criamos uma tabela para notas
create table tbl_Notas
(
	ID_Aluno int primary key identity(1,1),
	Nome_Aluno varchar(50),
	Primeira_Nota int,
	Segunda_Nota int
)

--inserimos os seus dados
insert into tbl_Notas (Nome_Aluno, Primeira_Nota, Segunda_Nota) values ('Guilherme',10,7)
insert into tbl_Notas (Nome_Aluno, Primeira_Nota, Segunda_Nota) values ('Marcelo',9,8)
insert into tbl_Notas (Nome_Aluno, Primeira_Nota, Segunda_Nota) values ('Cesar',7,5)
insert into tbl_Notas (Nome_Aluno, Primeira_Nota, Segunda_Nota) values ('Bruna',5,8)

--podemos ver a tabela
select * from tbl_Notas

--iniciamos a função
create function Nota_Media
--definimos seus parametros
(@Nome varchar(30))
--definimos qual tipo de dado retornara
returns int 
as
	--iniciando bloco de codigo
	begin
		--declaramos uma variavel
		declare @Media int
		--colocamos a conta de media dentro da nossa variavel
		select @Media = (Primeira_Nota + Segunda_Nota)/ 4.00 from tbl_Notas
		--usamos where para filtro
		where Nome_Aluno = @Nome
		--retornamos o dado definido
		return @Media
	--terminamos o bloco de codigo
	end

--selecionamos nossa função usando dbo.nome_da_função e passamos o paramero que ela precissa
select dbo.Nota_Media('Guilherme') as 'Média'