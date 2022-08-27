USE SUCOS;

SELECT * FROM tbcliente;

SELECT CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO FROM tbcliente;

SELECT CPF,NOME FROM tbcliente LIMIT 5;

SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbcliente;

SELECT * FROM tbproduto;

SELECT * FROM tbproduto WHERE PRODUTO = '544931';

SELECT * FROM tbcliente WHERE CIDADE =  'Rio De Janeiro' ;

UPDATE tbproduto SET SABOR = 'Cítrico' WHERE SABOR = 'Limão';

SELECT * FROM tbproduto WHERE SABOR = 'Limão';

SELECT * FROM tbproduto WHERE SABOR = 'Cítrico';

SELECT * FROM tabela_de_vendedores WHERE NOME = 'Claudia Morais';
