USE sucos_vendas;

SELECT estado,limite_de_credito FROM tabela_de_clientes;

SELECT estado, SUM(limite_de_credito) AS limite_total from tabela_de_clientes GROUP BY ESTADO;

SELECT embalagem,MAX(preco_de_lista) AS maior_preco from tabela_de_produtos GROUP BY embalagem;

SELECT estado,bairro, SUM(limite_de_credito) AS limite FROM tabela_de_clientes 
GROUP BY ESTADO,BAIRRO;

SELECT estado,bairro, SUM(limite_de_credito) AS limite FROM tabela_de_clientes 
WHERE cidade = 'Rio de Janeiro' GROUP BY ESTADO,BAIRRO ORDER BY bairro;

SELECT MAX(QUANTIDADE) AS MAIOR_QUANTIDADE FROM itens_notas_fiscais
WHERE codigo_do_produto  = '1101035';

SELECT COUNT(*) FROM itens_notas_fiscais
 WHERE codigo_do_produto = '1101035' AND quantidade =99;
 
 SELECT estado, SUM(limite_de_credito) AS soma_limite  FROM tabela_de_clientes
 GROUP BY ESTADO HAVING soma_limite > 900000;
 
 SELECT embalagem, MAX(preco_de_lista) AS maior_preco, MIN(preco_de_lista) AS menor_preco 
 FROM tabela_de_produtos GROUP  BY embalagem HAVING SUM(preco_de_lista) <= 80 and 
 MAX(preco_de_lista)  >=5 ; 
 
 SELECT * FROM notas_fiscais;
 
 SELECT CPF, COUNT(*) FROM notas_fiscais WHERE YEAR(data_venda) = 2016
 GROUP BY CPF HAVING COUNT(*)>2000; 
 
