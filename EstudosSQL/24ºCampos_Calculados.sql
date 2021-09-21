--definindo qual banco usar
use Banco_Estudos

--CAMPOS CALCULADOS
--campos calculados são campos que existe uma coluna de calculo que faz automaticamente quando adicionamos dados

--primeiro criamos uma tabela
create table tbl_Produtos
(
	codProduto smallint,
	nomeProduto varchar(20),
	preco money,
	quantidade smallint,
	--criamos o campo calculado, entre parenteses colocamos os campos que queremos calcular
	total as (preco * quantidade)
)

--iniciamos os inserts
insert into tbl_Produtos (codProduto, nomeProduto, preco, quantidade) values (1, 'Mouse', 15.00, 2)
insert into tbl_Produtos (codProduto, nomeProduto, preco, quantidade) values (2, 'Teclado', 18.00, 1)
insert into tbl_Produtos (codProduto, nomeProduto, preco, quantidade) values (3, 'Fones', 25.00, 1)
insert into tbl_Produtos (codProduto, nomeProduto, preco, quantidade) values (4, 'Pendrive', 25.00, 3)
insert into tbl_Produtos (codProduto, nomeProduto, preco, quantidade) values (5, 'Sd Card', 29.00, 2)
insert into tbl_Produtos (codProduto, nomeProduto, preco, quantidade) values (6, 'DVD-R', 1.30, 12)

--podemos notar que a coluna total ja esta preenchida calculando o campo preco * quantidade
select * from tbl_Produtos

--apagamos a tabela do banco
drop table tbl_Produtos