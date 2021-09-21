--definindo qual banco usar
use Banco_Estudos

--IDENTITY IDENTIDADE

create table tbl_teste_identidade
(
	ID_Teste smallint primary key identity,
	Valor smallint not null
)

insert into tbl_teste_identidade (Valor) values (10)
insert into tbl_teste_identidade (Valor) values (20)
insert into tbl_teste_identidade (Valor) values (30)
insert into tbl_teste_identidade (Valor) values (40)
insert into tbl_teste_identidade (Valor) values (50)

select * from tbl_teste_identidade

--como podemos no select os novos registros foram adicionados e o campo ID_Teste no qual existe o identity foi incrementado sozinho e 1 em 1