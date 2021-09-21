--definindo qual banco usar
use Banco_Estudos

--criamos uma tabela para notas
create table tbl_Notas
(
	ID_Aluno int primary key identity(1,1),
	Nome_Aluno varchar(50),
	Primeira_Nota int,
	Segunda_Nota int
)

insert into tbl_Notas (Nome_Aluno, Primeira_Nota, Segunda_Nota) values ('Guilherme',10,7)
insert into tbl_Notas (Nome_Aluno, Primeira_Nota, Segunda_Nota) values ('Marcelo',9,8)
insert into tbl_Notas (Nome_Aluno, Primeira_Nota, Segunda_Nota) values ('Cesar',7,5)
insert into tbl_Notas (Nome_Aluno, Primeira_Nota, Segunda_Nota) values ('Bruna',5,8)

select * from tbl_Notas

declare
	@Nome varchar(50),
	@Media int,
	@Resultado varchar(30)

select 
	@Nome = tbl_Notas.Nome_Aluno,
	@Media = (tbl_Notas.Primeira_Nota + tbl_Notas.Segunda_Nota)/2
from tbl_Notas
where ID_Aluno = 4
if @Media >= 7
	begin
		set @Resultado = 'Aprovado'
	end
else
	begin
		set @Resultado = 'Reprovado'
	end

select 'O aluno ' + @Nome + ' teve sua media de ' + cast(@Media as varchar(30)) + ' e foi ' + @Resultado

drop table tbl_Notas
