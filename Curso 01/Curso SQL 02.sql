USE sucos;

INSERT INTO tbproduto ( 
PRODUTO,NOME,EMBALAGEM,TAMANHO,SABOR,PRECO_LISTA) VALUES ( 
'1037797' , 'Clean - 2 Litros - Laranja' , 'PET', '350 Litros' ,'Laranja', 16.01);

INSERT INTO tbproduto ( 
PRODUTO,NOME,EMBALAGEM,TAMANHO,SABOR,PRECO_LISTA) VALUES ( 
'1000889' , 'Sabor da Montanha - 700 ml - Uva' , 'Garrafa', '700 ml' ,'Uva', 6.31);

INSERT INTO tbproduto ( 
PRODUTO,NOME,EMBALAGEM,TAMANHO,SABOR,PRECO_LISTA) VALUES ( 
'1004327' , 'Videira do Campo - 1,5 Litros - Melância' , 'PET', '1,5 Litros' ,'Melância', 19.51);



SELECT * FROM tbproduto;

INSERT INTO tabela_de_vendedores ( MATRICULA, NOME , PERCENTUAL_COMISSÃO)  VALUES ( '0235','Márcio Almeida Silva', 0.08);

INSERT INTO tabela_de_vendedores ( MATRICULA, NOME , PERCENTUAL_COMISSÃO)  VALUES ( '0236','Claúdia Morais', 0.08);

UPDATE tabela_de_vendedores SET PERCENTUAL_COMISSÃO = 0.11
WHERE MATRICULA = '0236';

UPDATE tabela_de_vendedores SET NOME = 'José Geraldo da Fonseca Junior'
WHERE MATRICULA = '0023';


SELECT * FROM tabela_de_vendedores;