--definindo qual banco usar
use Banco_Estudos

--PROCEDURE VALOR PADRAO - PARAMETRO DE ENTRADA
--definimos um parametros ja com valor padrao para ser usado caso um novo valor nao informado

--criamos a procedure com um parametro com valor padrao
create procedure Procedure_Valor_Padrao (@Nome varchar(30), @Idade int = 18) as select @Nome select @Idade

--podemos ver que quando nao definimos o parametro entao é usado o já definido na procedure, no caso 18
exec Procedure_Valor_Padrao @Nome = guilherme

--quando definimos um valor entao ele é alterado
exec Procedure_Valor_Padrao @Nome = guilherme, @Idade = 20