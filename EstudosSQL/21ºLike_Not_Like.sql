--definindo qual banco usar
use Banco_Estudos

--LIKE e NOT LIKE
--LIKE determina se a cadeia de caracters especifica corresponde a um padrao especificado
-- NOT LIKE inverte a comparação e verifica a cadeia de caracteres nao correspondente do padrao especificado

--_ qualquer caracter unico
--% qualquer cadeia de 0 ou mais caracteres
--[] qualquer caracter unico no intervalo ou conjunto especificado ([a-h];[aeiou])
--[^] qualquer caracter unico que nao esteja intervalo ou conjunto especificado ([a-h];[aeiou])

--ex

--%A% tudo que tenha a letra A
--&A tudo que termine com a letra A
--A% tudo que comece com a letra A

select * from tbl_Livros

--LIKE

--tudo que tenha a letra D
select * from tbl_Autores where Nome_Autor like '%D%'

--tudo que comece com a letra D
select * from tbl_Autores where Nome_Autor like 'D%'

--tudo que termine com a letra D
select * from tbl_Autores where Nome_Autor like '%D'

--usamos o _ para pular um caractere, no caso pesquisamos tudo que tenha o segundo caracter igual a I
select * from tbl_Livros where Nome_Livro like '_I%'

--usamos o _ para pular um caractere, no caso pesquisamos tudo que tenha o terceiro caracter igual a I
select * from tbl_Livros where Nome_Livro like '__I%'

--tudo que tenha a segunda letra como I e a quinta como O
select * from tbl_Livros where Nome_Livro like '_I__O%'

--tudo que comece com a letra S ou L
select * from tbl_Livros where Nome_Livro like '[sl]%'

--tudo que termine com a letra S ou L
select * from tbl_Livros where Nome_Livro like '%[ga]'

--tudo que tenha a letra G ou A
select * from tbl_Livros where Nome_Livro like '%[ga]%'

--podemos mesclar as funções agregadas dentro do like
--tudo que começe com a segunda letra sendo I ou S
select * from tbl_Livros where Nome_Livro like '_[is]%'

--NOT LIKE
--serve para negar

--tudo que nao tenha a letra D
select * from tbl_Autores where Nome_Autor not like '%D%'

--tudo que nao comece com a letra D
select * from tbl_Autores where Nome_Autor not like 'D%'

--tudo que nao termine com a letra D
select * from tbl_Autores where Nome_Autor not like '%D'

--usamos o _ para pular um caractere, no caso pesquisamos tudo que nao tenha o segundo caracter igual a I
select * from tbl_Livros where Nome_Livro not like '_I%'

--usamos o _ para pular um caractere, no caso pesquisamos tudo que nao tenha o terceiro caracter igual a I
select * from tbl_Livros where Nome_Livro not like '__I%'

--tudo que nao tenha a segunda letra como I e a quinta como O
select * from tbl_Livros where Nome_Livro not like '_I__O%'

--tudo que nao comece com a letra S ou L
select * from tbl_Livros where Nome_Livro not like '[sl]%'

--tudo que nao termine com a letra S ou L
select * from tbl_Livros where Nome_Livro not like '%[ga]'

--tudo que nao tenha a letra G ou A
select * from tbl_Livros where Nome_Livro not like '%[ga]%'

--podemos mesclar as funções agregadas dentro do like
--tudo que nao começe com a segunda letra sendo I ou S
select * from tbl_Livros where Nome_Livro not like '_[is]%'
