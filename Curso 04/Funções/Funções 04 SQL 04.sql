#Funções Aula 05

#Função Acha Tipo Sabor 

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_tipo_sabor`(vProduto VARCHAR(50))
BEGIN
	DECLARE vSabor VARCHAR(50);
     SELECT sabor INTO vSabor FROM tabela_de_produtos
     WHERE codigo_do_produto = vProduto;
     
	CASE vSabor
     WHEN "Lima/Limão" 
        THEN SELECT 'Cítrico';
	WHEN "Laranja" 
        THEN SELECT 'Cítrico';    
    
    WHEN "Morango/Limão"
        THEN SELECT 'Cítrico';
	WHEN "Uva" 
		THEN SELECT "Neutro" AS Resultado;
	WHEN "Morango"
        THEN SELECT 'Neutro';
	ELSE 
		SELECT "Ácidos";
	END CASE;
    
END
*/

#Função Acha Tipo Sabor Erro

/*

CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_tipo_sabor_erro`(vProduto VARCHAR(50))
BEGIN
	DECLARE vSabor VARCHAR(50);
    DECLARE msg_erro VARCHAR(30);
    DECLARE CONTINUE HANDLER FOR 1339 SET msg_erro = "O case não está completo";
     SELECT sabor INTO vSabor FROM tabela_de_produtos
     WHERE codigo_do_produto = vProduto;
     
	CASE vSabor
     WHEN "Lima/Limão" 
        THEN SELECT 'Cítrico';
	WHEN "Laranja" 
        THEN SELECT 'Cítrico';    
    
    WHEN "Morango/Limão"
        THEN SELECT 'Cítrico';
	WHEN "Uva" 
		THEN SELECT "Neutro" AS Resultado;
	WHEN "Morango"
        THEN SELECT 'Neutro';

	END CASE;
    SELECT msg_erro;
    
END



*/