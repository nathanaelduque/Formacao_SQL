#Sincronização entre tabelas:
USE vendas_sucos;

SELECT * FROM vendedores;

SELECT * FROM sucos_vendas.tabela_de_vendedores;

SELECT * FROM vendedores A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA=SUBSTRING(B.MATRICULA,3,3);

UPDATE vendedores A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA=SUBSTRING(B.MATRICULA,3,3) SET A.FERIAS = B.DE_FERIAS;

#Exercicio
SELECT * FROM clientes WHERE bairro IN (SELECT DISTINCT bairro FROM vendedores);

UPDATE clientes SET volume_compra = 1.3*volume_compra 
WHERE bairro IN (SELECT DISTINCT bairro FROM vendedores);

SELECT * FROM clientes;

SELECT * FROM sucos_vendas.tabela_de_clientes;

SELECT * FROM clientes WHERE bairro IN (SELECT DISTINCT bairro FROM vendedores);
