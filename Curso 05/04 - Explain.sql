#Fazendo backup do banco sucos vendas
USE sucos_vendas; 

SELECT A.nome_do_produto FROM tabela_de_produtos A;

EXPLAIN FORMAT=JSON SELECT A.nome_do_produto FROM tabela_de_produtos A;
