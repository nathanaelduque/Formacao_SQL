USE sucos_vendas;

#Funções no MySQL:

#Funções de String:
SELECT LTRIM('     Olá') AS resultado;

SELECT RTRIM('Olá        ') AS resultado;

SELECT TRIM('      Olá     ') AS resultado;

SELECT CONCAT('Olá',' ','Tudo Bem','?') AS resultado;

SELECT UPPER('Olá tudo bem?') AS resultado;

SELECT substring('Olá, tudo bem?',6,4) AS resultado;

SELECT CONCAT(nome, '(', CPF,')') AS resultado FROM tabela_de_clientes;

SELECT CONCAT (nome,' ', endereco_1,' ',endereco_2, ' ', cidade, ' ' ,bairro, ' ', estado) 
AS resultado
FROM tabela_de_clientes; 

#Funções de Data:

SELECT CURDATE();

SELECT CURRENT_TIMESTAMP();

SELECT DAY(CURRENT_TIMESTAMP()) AS resultado;

SELECT MONTHNAME(CURRENT_TIMESTAMP) AS resultado;

SELECT DATEDIFF(CURRENT_TIMESTAMP,'1997-11-17') AS resultado;

SELECT DISTINCT data_venda, DAYNAME(data_venda) AS dia,MONTHNAME(data_venda) AS mes,
YEAR(data_venda) AS ano FROM notas_fiscais;

SELECT CURDATE();

SELECT nome, TIMESTAMPDIFF(YEAR,data_de_nascimento,CURDATE()) AS Idade 
FROM tabela_de_clientes;

# Funções matemáticas:

SELECT (23 + ((25 - 2)/2)*45)  AS resultado;

#Arredonda pro maior inteiro mais próximo:
SELECT CEILING(12.333333333332323232) AS resultado;

#Arredonda pro inteiro mais próximo:
SELECT ROUND(12.333333333332323232) AS resultado;

#Arredonda pro menor inteiro mais próximo:
SELECT FLOOR(12.7777735154322) AS resultado;

# Dá um número aleatório:
SELECT RAND() AS resultado;

SELECT numero,quantidade, preco,ROUND(quantidade*preco,2) AS faturamento 
FROM itens_notas_fiscais;

SELECT * FROM notas_fiscais;

SELECT * FROM itens_notas_fiscais;

#Exercicio

#Minha Resposta:

#Criei uma view dessa tabela:
SELECT A.NUMERO,A.DATA_VENDA,SUM(A.IMPOSTO*(B.QUANTIDADE*B.PRECO))AS imposto_pago FROM notas_fiscais A 
INNER JOIN itens_notas_fiscais B ON A.NUMERO= B.NUMERO GROUP BY A.NUMERO;

SELECT YEAR(DATA_VENDA),SUM(imposto_pago) from imposto_por_venda GROUP BY YEAR(DATA_VENDA);

#Resposta do Professor:
SELECT YEAR(DATA_VENDA),FLOOR(SUM(imposto*(quantidade*preco))) FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.numero = INF.numero WHERE YEAR(DATA_VENDA) = 2016 
GROUP BY YEAR(DATA_VENDA);

