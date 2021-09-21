--definindo qual banco usar
use Banco_Estudos

--ALTER TABLE E DROP TABLE
select * from tbl_Livros


--apagando uma coluna de uma tabela
alter table tbl_Livros
drop column ID_Autor

--apagando uma chave primaria
alter table tbl_Livros
drop constraint nome_constraint

--adicionando uma coluna sendo chave estrangeira a uma tabela
alter table tbl_Livros
add ID_Autor smallint not null
constraint fk_ID_Autor foreign key (ID_Autor)
references tbl_Autores

--adicionando uma coluna sendo chave estrangeira a uma tabela
alter table tbl_Livros
add ID_Editora smallint not null
constraint fk_ID_Editora foreign key (ID_Editora)
references tbl_Editoras

--alterando uma coluna, trocando o tipo de dados (fazer isso somente se a tabela não exitir valores já nela)
alter table tbl_Livros
alter column ID_Autor smallint

--inserindo chave primaria a uma tebal que não tem, para isso a tabela deve existir ja a coluna
alter table Clientes
add primary key (ID_Cliente)

--apagando uma tabela
drop table tbl_teste_identidade