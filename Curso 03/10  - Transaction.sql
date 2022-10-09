#Transações
USE vendas_sucos;

START TRANSACTION;

SELECT * FROM vendedores; 

UPDATE vendedores SET comissao = comissao * 1.15;

SELECT * FROM vendedores;

ROLLBACK;

SELECT * FROM vendedores;

#Usando o commit:

START TRANSACTION;

SELECT * FROM vendedores; 

UPDATE vendedores SET comissao = comissao * 1.15;

SELECT * FROM vendedores;

COMMIT;

SELECT * FROM vendedores;
