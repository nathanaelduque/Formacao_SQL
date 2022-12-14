#Criando as Tabelas dentro do banco de dados 

USE vendas_sucos;

CREATE TABLE PRODUTOS
(CODIGO VARCHAR(10) NOT NULL,
DESCRITOR VARCHAR(100) NULL,
SABOR VARCHAR(50) NULL,
TAMANHO VARCHAR(50) NULL, 
EMBALAGEM VARCHAR(50) NULL,
PRECO_LISTA FLOAT NULL,
PRIMARY KEY(CODIGO));

CREATE TABLE VENDEDORES 
(MATRICULA VARCHAR(5) NOT NULL,
NOME VARCHAR(100) NULL,
BAIRRO VARCHAR(50) NULL,
COMISSAO FLOAT NULL,
DATA_ADMISSAO DATE NULL,
FERIAS BIT(1) NULL,
PRIMARY KEY(MATRICULA));

#Se eu quiser alterar o nome de alguma tabela:
# ALTER TABLE vendedores RENAME COLUMN DATA_AIDMSSAO TO DATA_ADMISSAO;


CREATE TABLE VENDAS 
(NUMERO VARCHAR(5) NOT NULL,
DATA_VENDA DATE NULL,
CPF VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPOSTO FLOAT NULL,
PRIMARY KEY(NUMERO));

CREATE TABLE ITENS_NOTAS 
(NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
QUANTIDADE INT,
PRECO FLOAT,
PRIMARY KEY(NUMERO, CODIGO));

#Alterar o nome da tabela de vendas para 'notas':
ALTER TABLE VENDAS RENAME NOTAS;
