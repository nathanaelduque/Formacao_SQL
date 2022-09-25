#Funções Aula 06

#Função Looping While
/* 

CREATE DEFINER=`root`@`localhost` PROCEDURE `looping_while`(numInicial INT, numFinal INT)
BEGIN
	DECLARE contador INT;
    DELETE FROM tab_loop;
    SET contador = numInicial;
    
    WHILE contador <= numFinal
    DO
		INSERT INTO tab_loop (ID) VALUES (contador);
        SET contador = contador + 1;
    END WHILE;
SELECT * FROM tab_loop;
END
*/

# Função Soma Dias Notas 

/*

CREATE DEFINER=`root`@`localhost` PROCEDURE `Soma_Dias_Notas`(data1 DATE,data2 DATE)
BEGIN
 DECLARE numero_notas INT;
 DECLARE numero_notas_no_dia INT;
 SET numero_notas = 0;
 SET numero_notas_no_dia = 0;
 WHILE data1<data2
 DO 
  SELECT COUNT(*) INTO numero_notas_no_dia FROM notas_fiscais
  WHERE  DATA_VENDA = data1 ;
  SET numero_notas = numero_notas + numero_notas_no_dia;
  SELECT ADDDATE(data1, INTERVAL 1 DAY) INTO data1;
 END WHILE;
 SELECT numero_notas;
END

*/

#Função teste select into 

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `teste_select_into`()
BEGIN
	DECLARE vnome VARCHAR(50);
    SELECT nome INTO vnome FROM tabela_de_clientes;
    SELECT vnome;
END
*/