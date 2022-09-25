#Nesse Documentos exibiremos a criação das variáveis usando o create stored procedure:

########## Criação da exibe variável #########
# No create stored procedure fica assim:
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `exibe_variavel`()
BEGIN
 DECLARE texto CHAR(13) DEFAULT 'Alô Mundo !!!';
 SELECT texto;
END
*/

####### Criacao da tipo_de_dados: ######
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `tipos_de_dados`()
BEGIN
# Fazendo declarações usando tipos diferentes:
	DECLARE v VARCHAR(5) DEFAULT 'Texto';
    DECLARE i INTEGER DEFAULT 10;
    DECLARE d DECIMAL(4,2) DEFAULT 56.12;
    DECLARE dt DATE DEFAULT '2019-03-01';
    
#Exibindo cada uma das variáveis 
	SELECT v;
    SELECT i;
    SELECT d;
    SELECT dt;
    
END
*/

########### Criacao da sem_declaracao ########

#Obs: Ela não funciona, pois não declaramos uma variável dentro dela;
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `sem_declaracao`()
BEGIN
 SELECT texto;
END
*/

######## Criacao da mesmo_tipo_dados ##########

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `mesmo_tipo_dados`()
BEGIN
# O que a gente declara na mesma linha depois  do tipo de variável vale 
#pra todo mundo da linha
  DECLARE data_1,data_2 DATE DEFAULT '2014-09-13';
  SELECT data_1,data_2;
END
*/

###### Criacao da atribui_valor ########

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `atribui_valor`()
BEGIN
 DECLARE texto VARCHAR(30) DEFAULT 'Texto Inicial';
 SELECT texto;
 SET texto = 'Texto Modificado';
 SELECT texto;
END
*/

##### Criacao do sp_Exerc01 ########

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Exerc01`()
BEGIN
 DECLARE Cliente VARCHAR(10) DEFAULT 'João';
 DECLARE Idade INTEGER DEFAULT 10;
 DECLARE DataNascimento DATE DEFAULT '2007-01-10';
 DECLARE Custo DECIMAL(4,2) DEFAULT 10.23;
 
 SELECT Cliente,Idade,DataNascimento,Custo;
END
*/


####### Criacao do inclui_novo_produto ##########

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `inclui novo produto`()
BEGIN
DECLARE vCodigo VARCHAR(50) DEFAULT '3000001';
DECLARE vNome VARCHAR(50) DEFAULT 'Sabor do Mar - 700 ml - Manga';
DECLARE vSabor VARCHAR(50) DEFAULT 'Manga';
DECLARE vTamanho VARCHAR(50) DEFAULT '700 ml';
DECLARE vEmbalagem VARCHAR(50) DEFAULT 'Garrafa';
DECLARE vPreco DECIMAL(10,2) DEFAULT 9.25;
INSERT INTO tabela_de_produtos (CODIGO_DO_PRODUTO,NOME_DO_PRODUTO,SABOR,TAMANHO,EMBALAGEM,PRECO_DE_LISTA)
    VALUES (vCodigo,vNome,vSabor,vTamanho,vEmbalagem,vPreco);
END
*/


######## Criacao da Calcula_Idade ########

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `Calcula_Idade`()
BEGIN
 UPDATE tabela_de_clientes SET IDADE =
 TIMESTAMPDIFF(YEAR,data_de_nascimento, CURDATE());
END
*/

#Criacao do inclui_novo_produto_parametro 

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `inclui_novo_produto_parametro`(vCodigo VARCHAR(50),
	vNome VARCHAR(50),vSabor VARCHAR(50),vTamanho VARCHAR(50),
	vEmbalagem VARCHAR(50),vPreco DECIMAL(10,2) )
BEGIN
DECLARE mensagem VARCHAR(50);
#Erro 1062:  chave  primaria duplicada
DECLARE EXIT HANDLER FOR 1062
BEGIN
	SET mensagem = "Problema de Chave Primária Duplicada !";
    SELECT mensagem;
END;
INSERT INTO tabela_de_produtos (CODIGO_DO_PRODUTO,NOME_DO_PRODUTO,SABOR,TAMANHO,EMBALAGEM,PRECO_DE_LISTA)
    VALUES (vCodigo,vNome,vSabor,vTamanho,vEmbalagem,vPreco);
    SET mensagem = "produto incluido com sucesso !";
    SELECT mensagem;
END
*/

# Criacao do Quantidade_Notas

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `Quantidade_Notas`(data_dia DATE)
BEGIN
DECLARE NUMNOTAS INTEGER;
  SELECT COUNT(*)  INTO NUMNOTAS 
  FROM notas_fiscais WHERE data_venda=data_dia GROUP BY (data_venda);
  SELECT NUMNOTAS;
END
*/
