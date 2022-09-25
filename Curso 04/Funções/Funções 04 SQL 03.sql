#Funções Aula 03:


#Create Novo Velho
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_novo_velho`(vCPF VARCHAR(20))
BEGIN
  DECLARE vResultado VARCHAR(20);
  DECLARE v_data_nascimento DATE;
  SELECT data_de_nascimento INTO v_data_nascimento FROM tabela_de_clientes
  WHERE CPF = vCPF;
  IF v_data_nascimento < '20000101' THEN 
		SET vRESULTADO = "Cliente Velho";
  ELSE 
		SET vResultado = "Cliente Novo";
  

  END IF;
SELECT vResultado; 
  
  
END
*/

#Testa Número Notas

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `Testa_Numero_Notas`(data_da_venda DATE)
BEGIN
	DECLARE vendas_na_data INT;
    DECLARE mensagem VARCHAR(80);
    SELECT COUNT(*) INTO vendas_na_data FROM notas_fiscais WHERE data_venda = data_da_venda;
    IF vendas_na_data > 70 THEN
		SET mensagem = "Muita nota";
	ELSE
		SET mensagem = "Pouca nota";
	END IF;
    SELECT(mensagem);
END
*/

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_status_preco`(vproduto VARCHAR(50))
BEGIN
	DECLARE vpreco FLOAT;
    DECLARE vMensagem VARCHAR(50);
    
    SELECT preco_de_lista INTO vpreco FROM tabela_de_produtos
    WHERE codigo_do_produto = vproduto;
    
    IF vpreco >= 12 THEN
		SET vmensagem = 'Produto Caro';
        
	ELSEIF vpreco >=7 AND vpreco < 23 THEN 
		SET vmensagem = 'Produto em Conta';
	ELSE
		SET vmensagem = 'Produto Barato';
	END IF;
    
    SELECT vmensagem;
END
*/


/*

CREATE DEFINER=`root`@`localhost` PROCEDURE `create_novo_velho`(vCPF VARCHAR(20))
BEGIN
  DECLARE vResultado VARCHAR(20);
  DECLARE v_data_nascimento DATE;
  SELECT data_de_nascimento INTO v_data_nascimento FROM tabela_de_clientes
  WHERE CPF = vCPF;
  IF v_data_nascimento < '20000101' THEN 
		SET vRESULTADO = "Cliente Velho";
  ELSE 
		SET vResultado = "Cliente Novo";
  

  END IF;
SELECT vResultado; 
  
  
END
*/