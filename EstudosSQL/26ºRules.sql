--definindo qual banco usar
use Banco_Estudos

--RULES 
--as regras sao configurações que permitem especificar como determinados parametros do banco de dados deve se comportar como limitar faixas de valores ou especificar dados invalidos

--create rule NOME DA REGRA as PARAMETRO

select * from tbl_Livros

--crianod regra rl_Preco e criando uma variavel @Valor que deve ser maior que 10
create rule rl_Preco as @Valor > 10.00
--apos criar o indice podemos ir na aba 'Pesquisador de objetos' abrir a tabela e ver a regra criado na pasta programação, apertando com o lado direto podemos ver suas propriedades

--associando regra a coluna da tabela
execute sp_bindrule rl_Preco, 'tbl_Livros.Preco_Livro'

--desassociando regra da coluna da tabea
execute sp_unbindrule 'tbl_Livros.Preco_Livro'

--apagando regra
drop rule rl_Preco