#Loops

USE sucos_vendas;

CREATE TABLE tab_loop(ID INT);

CALL looping_while(1,100);

CALL Soma_Dias_Notas("20150101","20150110");

# O problema do Select Into

CALL teste_select_into; # Não grava um vetor, somente um número
#Deve-se usar cursores