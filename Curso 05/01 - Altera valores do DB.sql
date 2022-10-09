USE SUCOS_VENDAS;

#Quantas Tabelas temporárias temos armazenadas em discos (processo fica mais lento)
#qndo usa o disco. 
SHOW GLOBAL STATUS LIKE 'Created_tmp_disk_tables';
 #Quando for diferente de 0, é bom aumentar a variavel que delimita a memória do hardware
 #(tmp_table_size)
 
 
#Quantas Tabelas temporárias temos criadas em memória
SHOW GLOBAL STATUS LIKE 'Created_tmp_tables';


SHOW GLOBAL VARIABLES LIKE 'tmp_table_size';
# Para alterar seu tamanho fazemos:
SET GLOBAL tmp_table_size = 208003328;

#Caso eu pare o serviço, a variável volta ao seu valor padrão;