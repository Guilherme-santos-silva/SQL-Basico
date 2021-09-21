--definindo qual banco usar
use Banco_Estudos

--WTH TIES
--usado junto com top
--sefirica se existe o mesmo valor depois do ultimo item do top, assim não perdemos dados

select top(x) with ties COLUNA from TABELA order by COLUNA desc/asc