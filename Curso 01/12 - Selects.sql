USE SUCOS;

SELECT * FROM tbproduto;

SELECT * FROM tbproduto WHERE PRECO_LISTA>= 16.007 AND PRECO_LISTA <= 16.009;

SELECT * FROM tbcliente WHERE IDADE>= 18 AND IDADE<=22 AND SEXO = 'M';

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins';

SELECT * FROM tabela_de_vendedores ;

SELECT * FROM tabela_de_vendedores WHERE DE_FERIAS = 1 AND YEAR(DATA_ADMISSAO) <2016;
