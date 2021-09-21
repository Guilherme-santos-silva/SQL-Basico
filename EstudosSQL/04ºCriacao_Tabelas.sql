--definindo qual banco usar
use Banco_Estudos

--CRIANDO TABELAS
--usamos create table
--identity: auto incremento, não precisamo inserir a chave primaria sempre que for fazer algum insert o auto incremento faz sozinho definimos que será iniciado no 100 e sera incrementado de 1 em 1
--unique: define que nao teremos valores duplicados nesse campo, funcina se fosse uma chave primaria

/**
ESTRUTURA DA CRIAÇÃO DE UMA TABELA

crate table NOME DA TABELA
(
	NOME DA COLUNA E QUAL SEU TIPO DE DADO E DEFINIÇÃO DE CHAVE PRIMARIA,
	NOME DA COLUNA E QUAL SEU DADO
)

**/
create table tbl_Livros
(
	ID_Livro smallint primary key identity(100,1),
	Nome_Livro varchar(50) not null,
	ISBN varchar(30) not null unique,
	ID_Autor smallint not null,
	Data_Pub datetime not null,
	Preco_Livro money not null
)

create table tbl_Autores
(
	ID_Autor smallint primary key,
	Nome_Autor varchar(50),
	Sobrenome_Autor varchar(60)
)

--quando deixamos identity sem definição de incrementação ele começa no 1 e incrementa de 1 em 1
create table tbl_Editoras
(
ID_Editora smallint primary key identity,
	Nome_Editora varchar(50) not null
)

--podemos ver informações sobre as tabelas
sp_help tbl_Autores

--ao entrarmos no banco na barra "Pesquisador de Objetos" podemos ir em "Diagramas de Banco de Dados" clicando com o lado direito do mouse e em seguida em "Novo Diagramas de Banco de Dados" podemos ver uma lista das tabelas que existem no banco e seleciona-las para uma exibição visual


CREATE TABLE cliente (--int tem 11 posições ID_CLIENTE numeric(3)NOT NULL,NOME varchar(35)NOT NULL,EMAIL varchar(50)NOT NULL);

CREATE TABLE COMPRA(CODIGO_COMPRA INT NOT NULL);

--adicionando campos//colunas na tabela cliente
ALTER TABLE CLIENTE ADD PRIMARY KEY(ID_CLIENTE);

ALTER TABLE COMPRA ADD PRIMARY KEY(CODIGO_COMPRA) --after NOME; adicionar o campo depois de NOME

ALTER TABLE CLIENTE ADD ENDERECO VARCHAR(50);

ALTER TABLE COMPRA ADD DATA_COMPRA VARCHAR(10);

--INSERINDO CHAVE ESTRANGEIRA
ALTER TABLE COMPRA ADD ID_CLIENTE INT;
ALTER TABLE CLIENTE ADD CONSTRAINT ID_CLIENTE INT;

ALTER TABLE COMPRAADD CONSTRAINT ID_CLIENTEFOREIGN KEY (ID_CLIENTE)REFERENCES CLIENTE (ID_CLIENT)

--alterando tipo do dado ou tamanho
alter table cliente alter column nome varchar(50);

--apagando os dados 
ALTER TABLE CLIENTE DROP EMAIL;--apagando uma colunaALTER TABLE CLIENTE DROP COLUMN EMAIL;

--apagando chave primaria 
--primerio devemos apagar a sua estrangeira
ALTER TABLE CLIENTE DROP PRIMARY KEY;

--alterando nome da tabela 
ALTER TABLE cliente RENAME clientes;RENAME TABLE cliente TO clientes;