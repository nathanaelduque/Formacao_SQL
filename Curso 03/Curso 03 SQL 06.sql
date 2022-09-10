USE VENDAS_SUCOS;

SELECT * FROM produtos;

UPDATE produtos SET preco_lista = 5 WHERE codigo = '1000889';

UPDATE produtos SET embalagem = 'PET', tamanho = '1 Litro', 
Descritor = 'Sabor da Montanha - 1 Litro - Uva' WHERE CODIGO = '1000889';

SELECT * FROM produtos WHERE SABOR = 'Maracujá';

UPDATE produtos SET preco_lista=preco_lista*1.1 WHERE sabor= 'Maracujá';
SELECT * FROM produtos WHERE SABOR = 'Maracujá';

UPDATE clientes SET endereco = 'R. Jorge Emílio 23',bairro = 'Santo Amaro', cidade = 'São Paulo', 
ESTADO = 'São Paulo', CEP = '8833223' WHERE CPF = '19290992743'; 

SELECT * FROM clientes WHERE CPF = '19290992743';



