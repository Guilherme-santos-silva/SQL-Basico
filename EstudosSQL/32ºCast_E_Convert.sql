--definindo qual banco usar
use Banco_Estudos

--CAST E CONVERT

--convertemos o valor money para varchar usando cast
select 'O Nome do Livro é ' + Nome_Livro + ' e o seu preço é de ' + CAST(Preco_Livro as varchar(30)) from tbl_Livros 

--convertemos o valor money para varchar usando convert
select 'O Nome do Livro é ' + Nome_Livro + ' e o seu preço é de ' + CONVERT(varchar(30), Preco_Livro) from tbl_Livros 

--podemos ver as datas sem conversao
select * from tbl_Livros

--trabalhado com convert usando datas, ao converter date time a varchar temos o exemplo
select CONVERT(varchar(15), Data_Pub) from tbl_Livros 

--convertemos para varchar mas usamos uma mascara(estilo) para organizar
--dia mes ano
select CONVERT(varchar(15), Data_Pub,103) from tbl_Livros 

--mes dia ano
select CONVERT(varchar(15), Data_Pub,101) from tbl_Livros 
