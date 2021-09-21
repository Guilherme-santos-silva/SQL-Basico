--definindo qual banco usar
use Banco_Estudos

--IN: filtro de multiplas condições
--NOT IN: nega um filtro de multipla condições
--determina se um determinado valor corresponde a qualquer valor em subconsulta ou lista.
--retorna sempre true ou false, pode substituir o or em queries com mais de uma condição

--selecina na tbl autores todos os dados onde o id autor esteja em 1,2,3
select * from tbl_Livros where ID_Autor in (1,2,3)

--podemos usar com strings tambem
select * from tbl_Livros where Nome_Livro in ('Using Samba','SSH, the Secure Shell')

--selecina na tbl autores todos os dados onde o id autor nao esteja em 1,2,3
select * from tbl_Livros where ID_Autor in (1,2,3)

--podemos usar com strings tambem
select * from tbl_Livros where Nome_Livro not in ('Using Samba','SSH, the Secure Shell')