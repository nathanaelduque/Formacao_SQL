#Triggers:
USE vendas_sucos; 

#Criando uma tabela de faturamento e vendo o que há nela
CREATE TABLE tab_faturamento ( data_venda DATE NULL, total_venda FLOAT );

SELECT * FROM tab_faturamento;

#Verificando se as tabelas notas e itens_notas estão vazias 
SELECT * FROM notas;
SELECT * FROM itens_notas;

#Inserindo valores nessas duas tabelas:
INSERT INTO notas (numero, data_venda, CPF,matricula,imposto) VALUES
('0100','2019-05-08','1471156710','235',0.10); 

INSERT INTO itens_notas(numero, codigo, quantidade, preco) VALUES
('0100','1000889',100,10),
('0100','1002334',100,10);

INSERT INTO notas (numero, data_venda, CPF,matricula,imposto) VALUES
('0101','2019-05-08','1471156710','235',0.10); 

INSERT INTO itens_notas(numero, codigo, quantidade, preco) VALUES
('0101','1000889',100,10),
('0101','1002334',100,10);

INSERT INTO notas (numero, data_venda, CPF,matricula,imposto) VALUES
('0102','2019-05-08','1471156710','235',0.10); 

INSERT INTO itens_notas(numero, codigo, quantidade, preco) VALUES
('0102','1000889',100,10),
('0102','1002334',100,10);

#Fazendo um Join para sabermos o faturamento e sua data:
SELECT A.DATA_VENDA, sum(B.quantidade*B.preco) FROM notas A 
INNER JOIN itens_notas B ON A.NUMERO = B.NUMERO
GROUP BY A.data_venda;

SELECT * FROM tab_faturamento;

INSERT INTO notas (numero, data_venda, CPF,matricula,imposto) VALUES
('0103','2019-05-08','1471156710','235',0.10); 

INSERT INTO itens_notas(numero, codigo, quantidade, preco) VALUES
('0103','1000889',100,10),
('0103','1002334',100,10);

#Fazendo um Join para sabermos o faturamento e sua data:
SELECT A.DATA_VENDA, sum(B.quantidade*B.preco) FROM notas A 
INNER JOIN itens_notas B ON A.NUMERO = B.NUMERO
GROUP BY A.data_venda;

#Ao incluir uma venda nova devo também atualizar a tabela de faturamento (É a tabela do group by)

#Adicionando um novo  item:
INSERT INTO notas (numero, data_venda, CPF,matricula,imposto) VALUES
('0103','2019-05-08','1471156710','235',0.10); 
INSERT INTO itens_notas(numero, codigo, quantidade, preco) VALUES
('0103','1000889',100,10),
('0103','1002334',100,10);

#Apagando o resultado da tabela de faturamento:
DELETE FROM tab_faturamento;

#Atualizando a tabela de faturamento;
INSERT INTO tab_faturamento 
SELECT A.DATA_VENDA, sum(B.quantidade*B.preco) FROM notas A 
INNER JOIN itens_notas B ON A.NUMERO = B.NUMERO
GROUP BY A.data_venda;

SELECT * FROM tab_faturamento;

#Adicionando um novo  item:
INSERT INTO notas (numero, data_venda, CPF,matricula,imposto) VALUES
('0104','2019-05-08','1471156710','235',0.10); 
INSERT INTO itens_notas(numero, codigo, quantidade, preco) VALUES
('0104','1000889',100,10),
('0104','1002334',100,10);

#Apagando o resultado da tabela de faturamento:
DELETE FROM tab_faturamento;

#Atualizando a tabela de faturamento;
INSERT INTO tab_faturamento 
SELECT A.DATA_VENDA, sum(B.quantidade*B.preco) FROM notas A 
INNER JOIN itens_notas B ON A.NUMERO = B.NUMERO
GROUP BY A.data_venda;
SELECT * FROM tab_faturamento;

#Podemos fazer essa atualização automaticamente através de triggers 
#Toda vez que atualizarmos as tabelas de vendas vamos ativar um trigger
#que vai apagar a tabela de faturamento e atualizá-la


#Vamos apagar as tabelas:
DELETE FROM itens_notas;
DELETE FROM notas;

# delimitador será o // e não o ; pq dentro do for each vão ter vários comando delimitados por
# ; se não usasse delimiter ele iria achar que o create trigger terminaria no primeiro ; 
# os ; dentro do fro each separa os comandos que eu tenho que executar dentro do trigger
DELIMITER //
CREATE TRIGGER tb_calcula_faturamento_insert AFTER INSERT ON itens_notas 
FOR EACH ROW BEGIN

   DELETE FROM tab_faturamento;

   INSERT INTO tab_faturamento 
   SELECT A.DATA_VENDA, sum(B.quantidade*B.preco) FROM notas A 
   INNER JOIN itens_notas B ON A.NUMERO = B.NUMERO
   GROUP BY A.data_venda;

END //

SELECT * FROM tab_faturamento ;
DELETE FROM tab_faturamento;

#trigger update e delete 

# Se eu excluir ou alterar um valor na tabela de notas, o que acontece com a tabela de faturamento?
#por enquanto nada, vamos explorar isso

UPDATE itens_notas SET quantidade = 500 WHERE numero ='0104' AND codigo = '1002334';

#O faturamento continua o mesmo, apesar de termos aumentado o item para 500
SELECT * FROM tab_faturamento;

#isso pq colocamos o AFTER INSERT , não AFTER UPDATE E AFTER DELETE 
#vamos fazer esses novos triggers

#do update:
DELIMITER //
CREATE TRIGGER tb_calcula_faturamento_update AFTER UPDATE ON itens_notas 
FOR EACH ROW BEGIN

   DELETE FROM tab_faturamento;

   INSERT INTO tab_faturamento 
   SELECT A.DATA_VENDA, sum(B.quantidade*B.preco) FROM notas A 
   INNER JOIN itens_notas B ON A.NUMERO = B.NUMERO
   GROUP BY A.data_venda;

END //

#Do delete:
DELIMITER //
CREATE TRIGGER tb_calcula_faturamento_delete AFTER DELETE ON itens_notas 
FOR EACH ROW BEGIN

   DELETE FROM tab_faturamento;

   INSERT INTO tab_faturamento 
   SELECT A.DATA_VENDA, sum(B.quantidade*B.preco) FROM notas A 
   INNER JOIN itens_notas B ON A.NUMERO = B.NUMERO
   GROUP BY A.data_venda;

END //

INSERT INTO notas (numero, data_venda, CPF,matricula,imposto) VALUES
('0105','2019-05-08','1471156710','235',0.10); 
INSERT INTO itens_notas(numero, codigo, quantidade, preco) VALUES
('0105','1000889',100,10),
('0105','1002334',100,10);

SELECT * FROM tab_faturamento;

DELETE FROM itens_notas WHERE numero = '0105' AND codigo = '1002334';

UPDATE itens_notas SET quantidade = 400 WHERE numero = '0100' AND codigo = '1002334';

SELECT * FROM tab_faturamento;

#Verificando se as tabelas notas e itens_notas estão vazias 
SELECT * FROM notas;
SELECT * FROM itens_notas;

# Existem maneiras mais elegantes de se criar triggers do que se criar 3 triggers diferentes
# Através de histórias de procedures
