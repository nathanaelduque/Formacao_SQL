USE sucos_vendas;

SELECT * FROM tabela_de_produtos WHERE NOT(SABOR = 'manga' AND TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE SABOR IN ('Laranja','Manga');

SELECT * FROM tabela_de_clientes WHERE CIDADE IN('Rio de Janeiro','São Paulo') AND IDADE >=20;

SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maçã%';

SELECT DISTINCT EMBALAGEM,TAMANHO FROM tabela_de_produtos WHERE SABOR = 'laranja';

SELECT DISTINCT BAIRRO FROM tabela_de_clientes WHERE CIDADE = 'Rio de Janeiro';
