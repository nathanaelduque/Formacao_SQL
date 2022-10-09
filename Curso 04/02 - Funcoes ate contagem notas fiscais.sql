#Nesse documento exibiremos os call da aula de variaveis
USE sucos_vendas ;

CALL exibe_variavel;

CALL tipos_de_dados; 

CALL data_hora_local;

CALL sem_declaracao;

CALL mesmo_tipo_dados;

CALL atribui_valor;

CALL sp_Exerc01;

CALL manipulacao_dados;

SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor do Mar%';

CALL  inclui_novo_produto;

SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor do Mar%';

############## Inclui novo produto com parâmetro #####
#Util

SELECT * FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '4000001';
CALL inclui_novo_produto_parametro('4000002','Sabor do Pantanal - 1 Litro - Melancia',
 'Melancia', '1 Litro', 'PET',4.67);
 SELECT * FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '4000001';
 
CALL acha_sabor_produto('1013793');
 
 SELECT * FROM notas_fiscais;
 
 CALL Quantidade_Notas ("2015-01-01")
