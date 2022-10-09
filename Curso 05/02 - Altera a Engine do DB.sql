USE sakila;

#Automaticamente o MySQL cria uma tabela do tipo InnoDB
CREATE TABLE default_table (ID INTEGER, NOME VARCHAR(100));

#Se quiser modificar, fazemos 
ALTER TABLE default_table ENGINE = MyISAM;

CREATE TABLE default_table2 (ID INTEGER, NOME VARCHAR(100)) ENGINE =MEMORY;