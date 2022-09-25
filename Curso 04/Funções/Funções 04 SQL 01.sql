#SP's Aula 01

#SP_Hello World:
#CREATE DEFINER=`root`@`localhost` PROCEDURE `Hello_World`()
#BEGIN
#    SELECT 'Hello World!!!';
#END

#SP Mostra Numero

#SP_Mostra_Numero
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `Mostra_Numero`()
BEGIN
 SELECT(1+9-5) AS resultado;
END
*/


#SP_com_funções
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_com_funcoes`()
BEGIN
 SELECT CONCAT('Alô Mundo !!!!','........',(1+9-5)) AS itens_combinados; 
END

*/

#SP_com_comentario
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_com_comentarios`()
BEGIN

# Usando a Função Concat

SELECT CONCAT("Alô Mundo !!", "........", (1+9-5)) AS itens_combinados;
END
*/
