USE vendas_sucos;

#Criando uma tabela produtos2
CREATE TABLE `produtos2` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRITOR` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANHO` varchar(50) DEFAULT NULL,
  `EMBALAGEM` varchar(50) DEFAULT NULL,
  `PRECO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ;

#Tranferindo todo o conteúdo da tabela de produtos para produtos2
INSERT INTO produtos2 SELECT * FROM produtos; 

SELECT * FROM produtos2;

#Colocando o preço de todos os sucos iguais a 8
UPDATE produtos2 SET preco_lista = 8; 

SELECT * FROM produtos2;

#Apagando toda a Tabela
DELETE FROM produtos2;

SELECT * FROM produtos2;

# Se quisermos apagar uma tabela que possua chaves estrangeiras, por exemplo, a tabela de 
# Itens_Notas e a tabela de notas devemos fazer:
DELETE FROM itens_notas;
DELETE FROM notas;
#Nessa ordem, devido as chaves estrangeiras; 

