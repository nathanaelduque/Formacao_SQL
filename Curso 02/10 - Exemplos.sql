USE sucos_vendas;

SELECT NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE FROM notas_fiscais NF INNER JOIN
itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO; 

SELECT NF.CPF, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m') AS MES_ANO, INF.QUANTIDADE 
FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO; 

# Consulta com vendas de clientes / mês 
SELECT NF.CPF, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m') AS MES_ANO, SUM(INF.QUANTIDADE) 
AS quantidade_vendas FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO GROUP BY NF.CPF,DATE_FORMAT(NF.DATA_VENDA,'%Y-%m'); 

SELECT * FROM tabela_de_clientes TC;
SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE FROM
tabela_de_clientes TC;

#Pode ser Máx ou Min em TC.Volume_de_compra 
SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_LIMITE,
CASE WHEN (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS)<0 THEN 'INVÁLIDA'
ELSE 'VÁLIDA' END AS STATUS_VENDAS FROM(
SELECT TC.NOME,NF.CPF, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m') AS MES_ANO, SUM(INF.QUANTIDADE) 
AS quantidade_vendas, MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE FROM notas_fiscais NF 
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO 
INNER JOIN tabela_de_clientes TC 
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m')) X ;
