USE sucos;

# Primeiramente vamos colocar CPF como chave primária 

ALTER TABLE tccliente ADD PRIMARY KEY (CPF);

# Agora vamos adicionar a coluna de data de nascimento ao DB

ALTER TABLE tccliente ADD COLUMN (DATA_NASCIMENTO DATE);

INSERT INTO tccliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO,
 CEP, IDADE, SEXO , LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO) 
 VALUES ('00388934505','João da Silva','Rua Projetada A número 10', '',
 'VILA ROMAN', 'CARATINGA', 'AMAZONAS','2222222',30, 'M', 10000.00,2000,
 0, '1992-10-05');
 
 SELECT * FROM tccliente
 
 
 
# Exercício usando a Tabela de vendedores # 

ALTER TABLE tabela_de_vendedores ADD COLUMN (DATA_ADMISSAO DATE , DE_FERIAS BIT(1));

ALTER TABLE tabela_de_vendedores ADD PRIMARY KEY (MATRICULA);

SELECT  * FROM tabela_de_vendedores;

UPDATE tabela_de_vendedores SET DATA_ADMISSAO = '2014-08-15', DE_FERIAS = 0 
WHERE MATRICULA = '0235';

UPDATE tabela_de_vendedores SET DATA_ADMISSAO = '2013-09-17', DE_FERIAS = 1
WHERE MATRICULA =  '0236';

INSERT INTO tabela_de_vendedores (MATRICULA, NOME, PERCENTUAL_COMISSÃO, 
DATA_ADMISSAO, DE_FERIAS) VALUES ('0237', 'Roberta Martins', 0.11 , '2017-03-18',1);

INSERT INTO tabela_de_vendedores (MATRICULA, NOME, PERCENTUAL_COMISSÃO,
DATA_ADMISSAO, DE_FERIAS) VALUES ('0238','Péricles ALves', 0.11, '2016-08-21',0);