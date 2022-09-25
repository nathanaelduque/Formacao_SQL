USE sucos_vendas;

#Encontra um numero aleatório entre 0 e 1
SELECT rand();

#Se quisermos outra faixa:
# (Aleatorio() *(Max - Min + 1)) + Min
#Min= 15 e Max = 300
SELECT (RAND()*(300 - 15 + 1)) +15;

#Se quisermos pegar somente a parte inteira, fazemos:
SELECT FLOOR(RAND()*(300 - 15 + 1) + 15);

#Vamos então construir Nossa Função 
SELECT f_numero_aleatorio(15,300);

CREATE TABLE tabela_aleatorios (numero INT);

CALL tabela_numeros;

SELECT COUNT(*) FROM tabela_de_clientes;

SELECT f_cliente_aleatorio();

SELECT * FROM tabela_de_produtos;

SELECT f_produto_aleatorio();

SELECT * FROM tabela_de_vendedores; 

CALL p_inserir_venda('20190517', 10,100);

SELECT f_vendedor_aleatorio();

