# If's
USE sucos_vendas;

SELECT * FROM tabela_de_clientes;

SELECT data_de_nascimento FROM tabela_de_clientes WHERE CPF = '1471156710';

CALL create_novo_velho("1471156710");

CALL create_novo_velho("19290992743");

#Fazendo o exercício 
USE SUCOS_VENDAS;

SELECT DATA_VENDA,COUNT(*) FROM notas_fiscais GROUP BY (DATA_VENDA);

CALL Testa_Numero_Notas("20150102");

## Usando o ELSEIF:

SELECT * FROM tabela_de_produtos;

CALL acha_status_preco("326779");

SELECT SUM(B.quantidade*B.preco) AS total_venda FROM notas_fiscais A INNER JOIN itens_notas_fiscais B
ON A.numero = B.numero
WHERE A.data_venda = '20170301';

CALL comparativo_vendas ("20170301","20170302");
