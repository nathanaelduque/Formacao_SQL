USE sucos;

DELETE FROM tbproduto WHERE PRODUTO = '1040107';

INSERT INTO tbproduto ( 
PRODUTO,NOME,EMBALAGEM,TAMANHO,SABOR,PRECO_LISTA) VALUES ( 
'1040107' , 'Light - 350 ml - Melância' , 'Lata', '350 ml' ,'Melância', 4.56);

SELECT * FROM tbproduto;

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES (
'1078680', 'Frescor do Verão - 470 ml - Manga',
'Lata', '470 ml', 'Manga', 5.18); 

UPDATE tbproduto SET EMBALAGEM = 'Garrafa' WHERE PRODUTO = '1078680';

ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);
