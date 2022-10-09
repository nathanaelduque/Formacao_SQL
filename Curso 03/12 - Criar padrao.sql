#Criando padrões para minha tabela:
USE sucos_vendas;

CREATE TABLE tab_padrao( ID INT AUTO_INCREMENT,
descritor VARCHAR(20),
endereco varchar(100) NULL,
cidade VARCHAR(50) DEFAULT 'Rio de Janeiro',
data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
PRIMARY KEY(ID));

INSERT INTO tab_padrao (descritor, endereco,cidade,data_criacao) VALUES ('Cliente X',
'Rua projetada A ', 'São Paulo','2019-01-01');

SELECT * FROM tab_padrao;

#Podemos fazer também:
INSERT INTO tab_padrao(descritor) VALUES ('Cliente Y');

SELECT * FROM tab_padrao;
