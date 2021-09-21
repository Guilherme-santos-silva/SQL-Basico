--definindo qual banco usar
use Banco_Estudos

--PROCEDURE VALOR PADRAO - PARAMETRO DE SAIDA
--return termina o procedimeno e retorna um valor inteiro ao chamador, pode ser usado para retornar status de sucesso ou falha no procedimento

--criamos a procedure com paratmetros para a entrada
create procedure Procedure_Parametro_Saida (@Numero as int output) as select @Numero * 2 as 'novo valor' return 

--criamos as variaveis a serem usados na entrada
declare @Valor int

--definimos um valor para as variaveis de entrada
set @Valor = 15
print @Valor
exec Procedure_Parametro_Saida @Valor output
