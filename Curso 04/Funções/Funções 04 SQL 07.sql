#Funções Aula 08

#Número Aleatório 
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `f_numero_aleatorio`(min INT, max INT) RETURNS int
BEGIN
	Declare vRetorno INT;
    SELECT FLOOR((RAND()*(max - min+1)) + min) INTO vRetorno;
RETURN vRetorno;
END
*/

#Tabela Número 
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `tabela_numeros`()
BEGIN
 DECLARE contador INT DEFAULT 0;
 DELETE FROM TABELA_ALEATORIOS;
 WHILE contador <=100
 DO
INSERT INTO tabela_aleatorios(NUMERO) VALUES (f_numero_aleatorio(0,1000)); 
SET contador = contador + 1;
END WHILE;
SELECT * FROM tabela_aleatorios;
END
*/

#Cliente Aleatório
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `f_cliente_aleatorio`() RETURNS varchar(11) CHARSET utf8mb4
BEGIN
	DECLARE vRetorno VARCHAR(11);
    DECLARE num_max_tabela INT;
    DECLARE num_aleatorio INT;
    SELECT COUNT(*) INTO num_max_tabela FROM tabela_de_clientes;
    
    SET num_aleatorio = f_numero_aleatorio(1,num_max_tabela);
    SET num_aleatorio = num_aleatorio - 1;
    SELECT CPF INTO vRetorno FROM tabela_de_clientes LIMIT num_aleatorio,1;
RETURN vRetorno;
END
*/

#Produto Aleatorio

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `f_produto_aleatorio`() RETURNS int
BEGIN
DECLARE vRetorno VARCHAR(11);
DECLARE numero_maximo_tabela INT;
DECLARE num_aleatorio INT;
SELECT COUNT(*) INTO numero_maximo_tabela FROM tabela_de_produtos;
SET num_aleatorio = f_numero_aleatorio(1,numero_maximo_tabela);
SET num_aleatorio = num_aleatorio - 1;
SELECT CODIGO_DO_PRODUTO INTO vRetorno FROM tabela_de_produtos LIMIT num_aleatorio,1;

RETURN vRetorno;

END
*/


#f_produto_aleatorio
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `f_produto_aleatorio`() RETURNS int
BEGIN
DECLARE vRetorno VARCHAR(11);
DECLARE numero_maximo_tabela INT;
DECLARE num_aleatorio INT;
SELECT COUNT(*) INTO numero_maximo_tabela FROM tabela_de_produtos;
SET num_aleatorio = f_numero_aleatorio(1,numero_maximo_tabela);
SET num_aleatorio = num_aleatorio - 1;
SELECT CODIGO_DO_PRODUTO INTO vRetorno FROM tabela_de_produtos LIMIT num_aleatorio,1;

RETURN vRetorno;

END
*/

#p inserir venda 

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_inserir_venda`(vDATA DATE, max_itens INT, 
max_quantidade INT)
BEGIN
DECLARE vCliente VARCHAR(11);
DECLARE vProduto VARCHAR(10);
DECLARE vVendedor VARCHAR(5);
DECLARE vQuantidade INT;
DECLARE vPRECO FLOAT; 
DECLARE vItens INT;
DECLARE vNumeroNota INT;
DECLARE vContador INT DEFAULT 1;
DECLARE vNumItensNotas INT;

#Cabeçalho da nota fiscal
SELECT MAX(numero)+1 INTO vNumeroNota FROM notas_fiscais;
SET vCliente = f_cliente_aleatorio();
SET vVendedor = f_vendedor_aleatorio();
SET vVendedor =CONVERT(vVendedor,CHAR);
SET vVendedor =CONCAT('00',vVendedor);


INSERT INTO notas_fiscais (CPF, MATRICULA,DATA_VENDA,numero,imposto)
VALUES (vCliente,vVendedor,vData,vNumeroNota,0.18);

#Itens da nota fiscal:
SET vItens = f_numero_aleatorio(1,max_itens);
WHILE vContador <= vItens
DO 

SET vProduto = f_produto_aleatorio();


SELECT COUNT(*) INTO vNumItensNotas   FROM itens_notas_fiscais
WHERE  NUMERO = vNumeroNota  AND CODIGO_DO_PRODUTO =vProduto;

IF vNumItensNotas  = 0 THEN
	SET vQuantidade = f_numero_aleatorio(10,max_quantidade);
	SELECT preco_de_lista INTO vPreco FROM tabela_de_produtos
	WHERE codigo_do_produto = vProduto; 

	INSERT INTO itens_notas_fiscais (numero, codigo_do_produto,quantidade,preco)
	VALUES (vNumeroNota,vProduto,vQuantidade, vPreco);
END IF;
SET vContador = vContador +1;
END WHILE;

END
*/

#f vendedor aleatorio
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `f_vendedor_aleatorio`() RETURNS int
BEGIN
DECLARE n_min_matricula INT;
DECLARE n_max_matricula INT;
DECLARE vRetorno INT ;

SELECT MIN(matricula) INTO n_min_matricula FROM tabela_de_vendedores;

SELECT MAX(matricula) INTO n_max_matricula FROM tabela_de_vendedores;

SET vRetorno = f_numero_aleatorio(n_min_matricula,n_max_matricula);
RETURN vRetorno;


END
*/
