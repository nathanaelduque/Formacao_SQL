USE sucos_vendas;

SELECT CURRENT_TIMESTAMP() AS resultado;

SELECT CONCAT('O dia de hoje é: ', CURRENT_TIMESTAMP()) AS RESULTADO;

#Porem queremos exibir isso de outro formato:

SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%m/%y')) AS resultado;

SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%d/%m/%y')) AS resultado;

SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%W')) AS resultado;

SELECT CONCAT('O dia de hoje é: ', DATE_FORMAT(CURRENT_TIMESTAMP(),'%U')) AS resultado;

SELECT CONVERT(23.3, CHAR) AS resultado;

SELECT SUBSTRING(CONVERT(23.3,CHAR),1,1) AS resultado;
#Perceba que aqui ela já trata o número como string!

# Exercício: queremos contruir uma string que retorne:
# "O cliente X faturou X no ano de Z", porém somente com o ano de 2016!
SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', CAST(SUM(INF.QUANTIDADE * INF.PRECO) AS CHAR(20))
,' no ano ', CAST(YEAR(NF.DATA_VENDA) AS CHAR(20))) AS sentenca FROM notas_fiscais NF 
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO=INF.NUMERO
INNER JOIN tabela_de_clientes TC on NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) =2016
GROUP BY TC.NOME,YEAR(DATA_VENDA);