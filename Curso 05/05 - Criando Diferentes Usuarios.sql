# DBA
CREATE USER 'admin02'@'localhost' IDENTIFIED BY 'admin02';
GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'localhost' WITH GRANT OPTION;

#Retirando o User root 
DROP USER 'root'@'localhost';

#Criando um usuário "Standart"
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE
 ON *.* TO 'user02'@'localhost';
 
#Criando um usuário com um read 
CREATE USER 'read02'@'localhost' IDENTIFIED BY 'read02';
GRANT SELECT,EXECUTE 
ON *.* TO 'read02'@'localhost';

#Criando um usuáiro que faça backup
CREATE USER 'back02'@'localhost' IDENTIFIED BY 'back02';
GRANT SELECT,RELOAD, LOCK TABLES, REPLICATION CLIENT ON *.* TO 'back02'@'localhost';

#Criando um usuário que possa acessar de qq máquina,  e não somente do localhost:
CREATE USER 'admingeneric02'@'%' IDENTIFIED BY 'admingeneric02';
GRANT ALL PRIVILEGES ON *.* TO 'admingeneric02'@'%' WITH GRANT OPTION;

#Criando um usuário que possa acessar somente um determinado schema:
CREATE USER 'user04'@'%' IDENTIFIED BY 'user04';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE ON sucos_vendas.* TO 'user04'@'%';

# A somente algumas tabelas dentro de um schema:
CREATE USER 'user05'@'%' IDENTIFIED BY 'user05';
GRANT SELECT,INSERT,UPDATE,DELETE ON sucos_vendas.tabela_de_clientes TO 'user05'@'%';

GRANT SELECT
ON sucos_vendas.tabela_de_produtos TO 'user05'@'%';
