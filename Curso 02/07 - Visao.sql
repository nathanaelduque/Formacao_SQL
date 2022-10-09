#Subconsultas:
USE sucos_vendas;

SELECT DISTINCT bairro FROM tabela_de_vendedores;


SELECT * FROM tabela_de_clientes WHERE bairro IN (SELECT DISTINCT bairro FROM tabela_de_vendedores);

SELECT X.embalagem, x.preco_maximo FROM
(SELECT embalagem, MAX(preco_de_lista) AS preco_maximo FROM tabela_de_produtos
GROUP BY embalagem) X WHERE X.preco_maximo >=10;

# Visão:

SELECT X.embalagem, x.preco_maximo FROM
VW_maiores_embalagens X WHERE X.preco_maximo >=10;

SELECT A.nome_do_produto, A.preco_de_lista, X.preco_maximo, (A.preco_de_lista / X.preco_maximo)*100 AS percentual FROM tabela_de_produtos A INNER JOIN 
vw_maiores_embalagens X ON A.embalagem = X.embalagem;   
