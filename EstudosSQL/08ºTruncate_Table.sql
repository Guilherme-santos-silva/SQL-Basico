--definindo qual banco usar
use Banco_Estudos

--TRUNCATE TABLE
-- apaga todos os dados da tabela mas sem apagar a tabela
 

--primeiro criamos uma tabela
create table tbl_Para_truncate
(
	id int primary key identity,
	nome varchar(30)
)

--inserimos valores nela
insert tbl_Para_truncate (nome) values ('Guilherme')
insert tbl_Para_truncate (nome) values ('Santos')
insert tbl_Para_truncate (nome) values ('Silva')

--podemos ver ela criada
select * from tbl_Para_truncate

--podemos ver quantas linhas a tebla tem
select count(*) from tbl_Para_truncate

--entao usamos truncate para ver os valores apagados
 truncate table tbl_Para_truncate

 --podemos ver depois do truncate que temos registros zerados
 select count(*) from tbl_Para_truncate

