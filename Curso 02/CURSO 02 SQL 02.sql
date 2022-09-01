USE sucos_vendas;

SELECT * FROM tabela_de_produtos LIMIT 2,3;

SELECT * FROM notas_fiscais WHERE DATA_VENDA = '2017-01-01' LIMIT 10;

SELECT * FROM tabela_de_produtos ORDER BY preco_de_lista;

SELECT * FROM tabela_de_produtos ORDER BY preco_de_lista DESC;

SELECT * FROM tabela_de_produtos ORDER BY embalagem DESC, nome_do_produto ASC;

SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE '%morango%';
 
SELECT * from itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035' ORDER BY quantidade DESC; 