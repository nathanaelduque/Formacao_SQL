USE SUCOS_VENDAS ;
CREATE TABLE tab_faturamento (DATA_VENDA DATE NULL, TOTAL_VENDA FLOAT);


DELIMITER //
CREATE TRIGGER tb_calcula_faturamento_insert AFTER INSERT ON notas_fiscais
FOR EACH ROW BEGIN

CALL p_calculo_faturamento;

END //

SELECT * FROM tab_faturamento ;
DELETE FROM tab_faturamento;

#trigger update e delete 

# Se eu excluir ou alterar um valor na tabela de notas, o que acontece com a tabela de faturamento?
#por enquanto nada, vamos explorar isso

UPDATE itens_notas SET quantidade = 500 WHERE numero ='0104' AND codigo = '1002334';

#O faturamento continua o mesmo, apesar de termos aumentado o item para 500
SELECT * FROM tab_faturamento;

#isso pq colocamos o AFTER INSERT , não AFTER UPDATE E AFTER DELETE 
#vamos fazer esses novos triggers

#do update:
DELIMITER //
CREATE TRIGGER tb_calcula_faturamento_update AFTER UPDATE ON notas_fiscais
FOR EACH ROW BEGIN
CALL p_calculo_faturamento;

END //

#Do delete:
DELIMITER //
CREATE TRIGGER tb_calcula_faturamento_delete AFTER DELETE ON notas_fiscais
FOR EACH ROW BEGIN
CALL p_calculo_faturamento;

END //

CALL p_inserir_venda('20190517',3,100);

SELECT * FROM tab_faturamento WHERE data_venda = '20190517';

DROP TRIGGER tb_calcula_faturamento_delete;
DROP TRIGGER tb_calcula_faturamento_insert;
DROP TRIGGER tb_calcula_faturamento_update;
