#Exluindo linhas da tabela
USE vendas_sucos;

#Incluindo os produtos que vamos deletar

INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
VALUES ('1001001','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50),
       ('1001000','Sabor dos Alpes 700 ml - Melão','Melão','700 ml','Garrafa',7.50),
	   ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),
       ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),
       ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),
       ('1001005','Sabor dos Alpes 700 ml - Açai','Açai','700 ml','Garrafa',7.50),
       ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),
       ('1001007','Sabor dos Alpes 1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),
       ('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),
       ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),
       ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),
       ('1001011','Sabor dos Alpes 1 Litro - Açai','Açai','1 Litro','Garrafa',7.50);

#Vamos inserir todos os valores que possuam um Litro da marca 'Sabor dos Alpes'
DELETE  FROM PRODUTOS WHERE TAMANHO = '1 Litro' and SUBSTRING(descritor, 1,15) = "Sabor dos Alpes";

SELECT * FROM produtos WHERE SUBSTRING(descritor, 1,15) = "Sabor dos Alpes";

#Podemos também usar como base uma outra tabela:
SELECT codigo_do_produto FROM sucos_vendas.tabela_de_produtos;

SELECT codigo FROM produtos WHERE codigo NOT IN 
(SELECT codigo_do_produto FROM sucos_vendas.tabela_de_produtos);

#Apagando o que tem na nossa base, mas não tem na sucos vendas:
DELETE FROM PRODUTOS WHERE codigo NOT IN 
(SELECT codigo_do_produto FROM sucos_vendas.tabela_de_produtos);

SELECT * FROM produtos WHERE SUBSTRING(descritor, 1,15) = "Sabor dos Alpes";

#Deletando as notas fiscais dos clientes que possuem menos de 18 anos 

DELETE A FROM NOTAS A INNER JOIN CLIENTES B ON A.CPF = B.CPF 
WHERE B.IDADE <=18;