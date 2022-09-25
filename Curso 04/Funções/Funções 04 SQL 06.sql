#Funções Aula 07

#Cursor Primeiro Contato
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_primeiro_contato`()
BEGIN
	DECLARE vNome VARCHAR(50);
    DECLARE c CURSOR FOR SELECT nome FROM tabela_de_clientes LIMIT 4;
    OPEN c;
    FETCH c INTO vNome;
    SELECT vNome;
    FETCH c INTO vNome;
    SELECT vNome;
	FETCH c INTO vNome;
    SELECT vNome;
	FETCH c INTO vNome;
    SELECT vNome;
    CLOSE c;
END
*/

#Cursor Looping

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping`()
BEGIN
	DECLARE fim_do_cursor INT DEFAULT 0;
	DECLARE vNome VARCHAR(50);
    DECLARE c CURSOR FOR SELECT nome FROM tabela_de_clientes LIMIT 4;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim_do_cursor = 1;
    OPEN c;
    WHILE fim_do_cursor = 0
    DO
		FETCH c INTO vNome;
        IF fim_do_cursor = 0 THEN 
        SELECT vNome;
        END IF;
	END WHILE;
    CLOSE c;
    
END
*/

#Limite Credito

/*

CREATE DEFINER=`root`@`localhost` PROCEDURE `Limite_Credito`()
BEGIN
	DECLARE fim INT DEFAULT 0;
	DECLARE credito_cliente INT DEFAULT 0;
    DECLARE credito_total INT DEFAULT 0;
    DECLARE c CURSOR FOR SELECT LIMITE_DE_CREDITO FROM tabela_de_clientes;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim = 1;
    OPEN c;
	WHILE fim = 0
    DO 
		FETCH c into credito_cliente;
        IF fim = 0 THEN 
			SET credito_total = credito_total + credito_cliente;
        END IF;
	END WHILE;
    CLOSE c;
    SELECT credito_total;
END
*/


#Looping Cursor Multiplas Colunas 

/*

CREATE DEFINER=`root`@`localhost` PROCEDURE `looping_cursor_multiplas_colunas`()
BEGIN
	DECLARE fim INT DEFAULT 0;
    DECLARE vCidade,vEstado,vCep VARCHAR(50);
    DECLARE vNome,vEndereco VARCHAR (150);
    DECLARE c CURSOR FOR 
    SELECT nome, endereco_1, cidade, estado, cep FROM tabela_de_clientes;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim = 1;
    OPEN c;
    WHILE fim = 0 
    DO
		FETCH c INTO vNome,vEndereco,vCidade,vEstado,vCep;
        IF fim = 0 THEN 
			SELECT CONCAT(vNome,' Endereço :',vEndereco,',',
            vCidade,' - ',vEstado,' CEP :', vCep);
		END IF;
    END WHILE;
    CLOSE c;
    
END

*/

#Mais um campo 

/*

CREATE DEFINER=`root`@`localhost` PROCEDURE `Mais_Um_Campo`(mes INT, ano INT)
BEGIN
	DECLARE fim INT DEFAULT 0;
	DECLARE vQuantidade INT DEFAULT 0;
    DECLARE vPreco FLOAT DEFAULT 0;
    DECLARE faturamento_acumulado FLOAT DEFAULT 0;
    DECLARE c CURSOR FOR 
    SELECT INF.QUANTIDADE, INF.PRECO FROM itens_notas_fiscais INF
    INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO WHERE 
    MONTH(NF.data_venda) = mes AND YEAR (NF.data_venda) = ano;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim = 1; 

    OPEN c;
    WHILE fim = 0
    DO
    FETCH c INTO vQuantidade, vPreco;
    IF fim = 0 THEN 
		SET faturamento_acumulado = faturamento_acumulado + (vquantidade*vpreco);
    END IF;
    END WHILE;
	CLOSE c;
    SELECT faturamento_acumulado;
END
*/

# Acha Tipo sabor 
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `fAcha_Tipo_Sabor`(vSabor VARCHAR (50)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
	DECLARE vRetorno VARCHAR(20) DEFAULT "";
    	CASE vSabor
     WHEN "Lima/Limão" THEN
       SET vRetorno = 'Cítrico';
	WHEN "Laranja" THEN
        SET vRetorno = 'Cítrico';    
    
    WHEN "Morango/Limão" THEN
        SET vRetorno = 'Cítrico';
	WHEN "Uva" THEN
		SET vRetorno = "Neutro";
	WHEN "Morango" THEN
        SET vRetorno =  'Neutro';
	ELSE 
		SET vRetorno = "Ácidos";
	END CASE;
RETURN vRetorno;
END
*/

#Num NOtas 

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `sp_numero_notas`(data_dia DATE) RETURNS int
BEGIN
DECLARE NUMNOTAS INTEGER;
  SELECT COUNT(*)  INTO NUMNOTAS 
  FROM notas_fiscais WHERE data_venda=data_dia GROUP BY (data_venda);
RETURN NUMNOTAS;
END
*/