#Funções aula 09

#Calculo Faturamento

/*

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_calculo_faturamento`()
BEGIN

   DELETE FROM tab_faturamento;

   INSERT INTO tab_faturamento 
   SELECT A.DATA_VENDA, sum(B.quantidade*B.preco) FROM notas_fiscais A 
   INNER JOIN itens_notas_fiscais B ON A.NUMERO = B.NUMERO
   GROUP BY A.data_venda;

END

*/
