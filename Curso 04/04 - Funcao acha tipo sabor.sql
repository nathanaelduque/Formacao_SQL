#Case:
USE SUCOS_VENDAS;

SELECT sabor FROM tabela_de_produtos;

SELECT sabor FROM tabela_de_produtos WHERE codigo_do_produto = "1000889";

SELECT * FROM tabela_de_produtos;

CALL acha_tipo_sabor("1000889");

# Case Not Found:

CALL acha_tipo_sabor_erro("100427");
