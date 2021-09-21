--definindo qual banco usar
use Banco_Estudos

--IF E ELE
--para usarmos blocos de codigos no if ou else devemos usar begin para começar e end para terminar

--criamos nossas variaveis
declare 
	@Idade int,
	@Nome varchar(10)

--atribuimos valor
set @Idade = 20
set @Nome = 'Guilherme'

--verificamos se a variavel Nome é igual a 'Guilherme'
if @Nome = 'Guilherme'
	--se for igual a guilherme exibimos o select
	select 'Bom dia ' + @Nome as 'Mensagem'
--verificamos se a variavel Idade é maior que 18
if @Idade >= 18
	--iniciamos nosso bloco de codigo
	begin
		--setamos idade como idade 'nem precissa'
		set @Idade = @Idade 
		--exibimos idade
		select @Idade as 'Idade'
	--terminamos o bloco
	end
--se variavel idade menor que 18 entao:
else 
	--iniciamos nosso bloco de codigo
	begin
		--setamos a variavel idade como 30
		set @Idade = 30
		--exibimos a variavel
		select @idade
	--terminamos o bloco
	end
