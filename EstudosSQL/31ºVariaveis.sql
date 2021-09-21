--definindo qual banco usar
use Banco_Estudos

--VARIAVELS

--exemplo, criando variaveis
declare 
	@Valor int,
	@Texto varchar(40),
	@Data_Nasc date,
	@Dinheiro money,
	@Vazio int

--atribuindo valores nas variaveis
set	@Valor =50
set	@Texto = 'guilherme'
set	@Data_Nasc = getdate()
set	@Dinheiro = 10.00

--selecionando variavel
select @Valor as'Valor variavel ´Valor´', @Texto as 'Valor variavel ´Texto´', @Vazio as 'Valor variavel ´Vazio´'

--pegando valor da tabela e inserindo dentro de uma variavel
declare @Livro varchar(30)
select @Livro = Nome_Livro
from tbl_Livros
where ID_Livro = 101

--selecionando variavel
select @Livro as 'Nome do livro'

--iniciando bloco de comandos

--iniciando nossas variaveis
declare
	@Preco money,
	@Quantidade int,
	@Nome varchar(30)

--definindo valores
set @Quantidade = 5

--definindo valores com dados da nossa tabela
select @Nome = Nome_Livro, @Preco = Preco_Livro from tbl_Livros where ID_Livro = 101

--mostrando valores das variaveis e fazendo contas
select @Nome as 'Nome do Livro', @Preco * @Quantidade as 'Preco do livro vezes 5'
