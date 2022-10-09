USE VENDAS_SUCOS;

#Inserindo dados na tabela produtos:
INSERT INTO produtos (codigo, descritor, sabor, tamanho, embalagem, preco_lista) VALUES 
('1040107','Light - 350ml - Melância', 'Melância', '350 ml', 'Lata', 4.56);

INSERT INTO produtos (codigo, descritor, sabor, tamanho, embalagem, preco_lista) VALUES 
('1040108','Light - 350ml - Graviola', 'Graviola', '350 ml', 'Lata', 4.00);

#Podemos também fazer da seguinte forma:
INSERT INTO produtos VALUES('1040109','Light - 350ml - Açaí', 'Açaí', '350 ml', 'Lata', 5.60);

#Ou assim:
INSERT INTO produtos VALUES ('1041010','Light - 350ml - Jaca', 'Jaca', '350 ml', 'Lata', 6.00),
('1041011','Light - 350ml - Manga', 'Manga', '350 ml', 'Lata', 3.50);

SELECT * FROM produtos;

#Fazendo o exercício:
INSERT INTO clientes( CPF,NOME, ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, DATA_NASCIMENTO, IDADE,
SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA) VALUES ('14711567100','Érica Carvalho',
'R.Iriquitia','Jardins','São Paulo','SP', '80012212','1990-09-01',27,'F',170000,24500,0),
('19290992743','Fernando Cavalcante','R.Dois de Fevereiro','Água Santa','Rio de Janeiro','RJ',
'22000000','2000-02-12',18,'M',100000,20000,1),
('26005867090','Cesár Teixeira','Rua Conde de Bonfim', 'Tijuca', 'Rio de Janeiro','RJ',
'22020001','2000-03-12',18,'M',120000,22000,0);

SELECT * FROM clientes;
