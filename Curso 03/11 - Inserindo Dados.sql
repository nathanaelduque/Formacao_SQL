# A propriedade de autoincremento: muito importante para chaves primárias

USE vendas_sucos;

CREATE TABLE tab_identity (ID INT AUTO_INCREMENT, descritor VARCHAR (20), PRIMARY KEY(ID));

INSERT INTO tab_identity (DESCRITOR) VALUES ('cliente1');

INSERT INTO tab_identity (DESCRITOR) VALUES ('cliente2');

INSERT INTO tab_identity (DESCRITOR) VALUES ('cliente3');

#Faz o mesmo efeito de eu não mencionar o ID:
INSERT INTO tab_identity (ID, DESCRITOR) VALUES (NULL, 'cliente4');

#Apagando o ID =2
DELETE FROM tab_identity WHERE ID =2 ;

INSERT INTO tab_identity (ID, DESCRITOR) VALUES (NULL, 'cliente5');

#Apagando o ID =5
DELETE FROM tab_identity WHERE ID =5 ;

#Será que vai colocar o 5 ou 6?
INSERT INTO tab_identity (ID, DESCRITOR) VALUES (NULL, 'cliente6');
#Colocou o 6!

#Podemos também forçar a sequencia:
INSERT INTO tab_identity (ID, DESCRITOR) VALUES (100, 'cliente7');
#Ao fazer isso a sequencia interna vai pra 100!

#Então se eu inserir um novo cliente....
INSERT INTO tab_identity (DESCRITOR) VALUES ( 'cliente8');
#Foi para 101

SELECT * FROM tab_identity;
