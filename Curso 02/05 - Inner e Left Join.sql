USE SUCOS_VENDAS;

SELECT * FROM tabela_de_vendedores;

SELECT * FROM notas_fiscais;

SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.matricula = B.matricula;

SELECT A.matricula, A.nome, COUNT(*) FROM
tabela_de_vendedores A
INNER JOIN notas_fiscais B 
ON A.matricula = B.matricula 
GROUP BY A.matricula, A.nome;

SELECT YEAR(data_venda), SUM(quantidade * preco) AS faturamento
FROM notas_fiscais nf INNER JOIN itens_notas_fiscais inf 
ON nf.numero = inf.numero
GROUP BY YEAR(data_venda);


# Agora vamos ver quantos clientes temos na nossa base de dados:
SELECT COUNT(*) FROM tabela_de_clientes;
# Temos 15 clientes 

#Vamos ver quais clientes compraram sucos de frutas:
SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;
# Somente 14 clientes compraram suco de frutas, existe um cliente que nunca comprou suco de frutas

# Vamos descobrir quem nunca comprou nenhum suco:
SELECT DISTINCT A.CPF,A.NOME, B.CPF FROM tabela_de_clientes A
INNER JOIN notas_fiscais B ON A.CPF = B.CPF;

#Vai trazer todo mundo da tabela de clientes e somente os correspondente da 
#tabela de notas fiscais, o cliente que estiver vazio é o cliente que nunca comprou
SELECT DISTINCT A.CPF,A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF;
# Nome do Cliente que nunca comprou= Fábio Carvalho!

# Vai trazer somente o cliente que nunca comprou
SELECT DISTINCT A.CPF,A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL;


SELECT tabela_de_vendedores.BAIRRO,tabela_de_vendedores.NOME, tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores, tabela_de_clientes;
