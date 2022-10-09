USE sucos_vendas;

SELECT * FROM tabela_de_produtos;

SELECT embalagem,
CASE WHEN preco_de_lista >= 12 THEN 'produto caro'
	 WHEN preco_de_lista>= 7 AND preco_de_lista <=12 THEN 'produto em conta'
     ELSE 'produto barato'
END AS status_preco, AVG(preco_de_lista) as preco_medio FROM tabela_de_produtos
WHERE sabor = 'manga'
GROUP BY embalagem, 
CASE WHEN preco_de_lista >= 12 THEN 'produto caro'
	 WHEN preco_de_lista>= 7 AND preco_de_lista <=12 THEN 'produto em conta'
     ELSE 'produto barato'
END ORDER BY embalagem;

SELECT NOME,
CASE WHEN YEAR(data_de_nascimento) < 1990 THEN 'Velho'
	 WHEN YEAR(data_de_nascimento) >=1990 AND YEAR(data_de_nascimento)<1995 THEN 'Jovem'
     ELSE 'Criança'
     END AS faixa_etaria
FROM tabela_de_clientes;
