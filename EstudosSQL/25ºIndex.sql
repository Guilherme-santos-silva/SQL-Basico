--definindo qual banco usar
use Banco_Estudos

--CREATE INDEX

--permite que as aplicações de banco de dados encontrem os dados mais rapidamente sem ter de ler a tabela toda
--só pode ser aplicado em uma coluna de uma tabela por vez
--criar apenas em tabelas que recebam muitas consultas, tabelas indexadas acabam levando mais tempo para serem atualizadas

--create index NOME INDICE on NOME TABELA (NOME COLUNA)

--select * from tbl_Livros

create index Indice_Nome_Livro on tbl_Livros (Nome_Livro)

--apos criar o indice podemos ir na aba 'Pesquisador de objetos' abrir a tabela e ver o indice criado na pasta indices, apertando com o lado direto podemos ver suas propriedades

--apagando um indice
drop index Indice_Nome_Livro on tbl_Livros

