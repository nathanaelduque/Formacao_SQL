#Estabelecendo as relações entre as Tabelas:
USE VENDAS_SUCOS;

# Entre os CPF's presentes nas tabelas de vendas e de clientes
ALTER TABLE NOTAS ADD CONSTRAINT FK_CLIENTES FOREIGN KEY(CPF)
REFERENCES CLIENTES(CPF);

# Entre as Matriculas presentes nas tabelas de vendas e de vendedores
ALTER TABLE NOTAS ADD CONSTRAINT FK_VENDEDORES FOREIGN KEY(MATRICULA)
REFERENCES VENDEDORES(MATRICULA);

#Entre os códigos presentes nas tabelas de produtos e de notas
ALTER TABLE ITENS_NOTAS ADD CONSTRAINT FK_PRODUTOS FOREIGN KEY(CODIGO)
REFERENCES PRODUTOS(CODIGO);

#Entre os números presentes nas tabelas de itens_notas e de notas
ALTER TABLE itens_notas ADD CONSTRAINT FK_NOTAS FOREIGN KEY(NUMERO)
REFERENCES NOTAS(NUMERO);


