#Vendo os privilégios de cada um dos usuários:
SELECT * FROM mysql.user;

#Vendo permissões específicas de um usuário:
SHOW GRANTS FOR 'user02'@'localhost';

#Removendo as permissões do usuário
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user02'@'localhost';

#Dando novos privilégios para o usuário:
GRANT SELECT, INSERT, UPDATE,DELETE,CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE 
ON *.* TO 'user02'@'localhost';

#Dando diferentes privilégios para o schema 'sucos_vendas'
GRANT SELECT,INSERT,UPDATE,DELETE ON sucos_vendas.* TO 'user02'@'localhost';