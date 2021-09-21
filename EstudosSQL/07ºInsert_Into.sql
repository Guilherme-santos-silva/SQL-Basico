--definindo qual banco usar
use Banco_Estudos

--INSERT INTO

--insert into NOME DA TBL (CAMPOS A SEREM INSERIDOS) values (VALORES A SEREM INSERIDOS)a
insert into tbl_Autores (ID_Autor, Nome_Autor, Sobrenome_Autor) values (1,'Daniel','Barret')
insert into tbl_Autores (ID_Autor, Nome_Autor, Sobrenome_Autor) values (2,'Gerald','Carter')
insert into tbl_Autores (ID_Autor, Nome_Autor, Sobrenome_Autor) values (3,'Mark','Sobell')
insert into tbl_Autores (ID_Autor, Nome_Autor, Sobrenome_Autor) values (4,'William','Stanek')
insert into tbl_Autores (ID_Autor, Nome_Autor, Sobrenome_Autor) values (5,'Richard','Blum')

insert into tbl_Editoras (Nome_Editora) values ('Pretice Hall')
insert into tbl_Editoras (Nome_Editora) values ('O´Reilly')
insert into tbl_Editoras (Nome_Editora) values ('Microsoft Press')
insert into tbl_Editoras (Nome_Editora) values ('Wiley')

--aqui temos dois campos que dependem dos campos ID_Editoras e ID_AUtor pois sao cahves estrangeiras e ja devem existir para poderem ser usados
insert into tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) values ('Linux Command Line and Shell Scripting', 143856969, '20091221', 68.35, 5, 4)
insert into tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) values ('SSH, the Secure Shell', 127658789, '20091221', 58.30, 1, 2)
insert into tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) values ('Using Samba', 123856789, '20001221', 61.45, 2, 2)
insert into tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) values ('Fedora and Red Hat Linux', 123346789, '20101101', 62.24, 3, 1)
insert into tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) values ('Windows Server 2012 Inside Out', 123356789, '20040517', 66.80, 4, 3)
insert into tbl_Livros (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) values ('Microsoft Exchange Server 2010', 123366789, '20001221', 45.30, 4, 3)


select * from tbl_Autores
select * from tbl_Editoras
select * from tbl_Livros