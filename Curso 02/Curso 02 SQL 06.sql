USE sucos_vendas;

SELECT DISTINCT bairro FROM tabela_de_clientes;
SELECT DISTINCT bairro FROM tabela_de_vendedores;

#Já aplicando o DISTINCT na união das duas tabelas
SELECT DISTINCT bairro FROM tabela_de_clientes
UNION
SELECT DISTINCT bairro FROM tabela_de_vendedores;

# Com o UNION ALL ele não aplica a função DISTINCT
SELECT DISTINCT bairro FROM tabela_de_clientes
UNION ALL 
SELECT DISTINCT bairro FROM tabela_de_vendedores;

SELECT DISTINCT bairro,nome, 'cliente' AS tipo FROM tabela_de_clientes
UNION
SELECT DISTINCT bairro,nome, 'vendedor' AS tipo FROM tabela_de_vendedores;

SELECT tabela_de_vendedores.BAIRRO,tabela_de_vendedores.NOME, tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores RIGHT JOIN  tabela_de_clientes
ON tabela_de_vendedores.bairro = tabela_de_clientes.bairro
UNION
SELECT tabela_de_vendedores.BAIRRO,tabela_de_vendedores.NOME, tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores LEFT JOIN  tabela_de_clientes
ON tabela_de_vendedores.bairro = tabela_de_clientes.bairro;
