###  Cursores
USE sucos_vendas;

CALL cursor_primeiro_contato;

CALL cursor_looping;

SELECT * FROM tabela_de_clientes;

CALL limite_credito;

CALL looping_cursor_multiplas_colunas;

CALL Mais_Um_Campo(1,2017);

SELECT * FROM notas_fiscais WHERE YEAR(data_venda) = 2017 AND MONTH(data_venda) = 1;

#Funções:

#Para podermos criar funções:
SET GLOBAL log_bin_trust_function_creators = 1;

SELECT facha_tipo_sabor("Laranja");

SELECT nome_do_produto, sabor, facha_tipo_sabor(sabor) AS Tipo FROM tabela_de_produtos
WHERE facha_tipo_sabor(SABOR) = 'Neutro';

SELECT sp_numero_notas('20170101');
