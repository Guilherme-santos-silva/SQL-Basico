--definindo qual banco usar
use Banco_Estudos

--AND E OR
--AND e / OR ou
--AND mostra o registro se ambas as condições forem vardadeiro
--OR mostra o registro se pelo menos uma das condições forem verdadeiro, se as duas veradeiras entao os dois

--duas condições verdadeiras com and
select * from tbl_Livros where ID_Autor > 3 and ID_Editora >3

--duas condições verdadeiras com or
select * from tbl_Livros where Nome_Livro = 'Using Samba' or ID_Autor = 5

--duas condições que não existem com and
select * from tbl_Livros where ID_Livro = 100 and Nome_Livro = 'Fedora and Red Hat Linux'
