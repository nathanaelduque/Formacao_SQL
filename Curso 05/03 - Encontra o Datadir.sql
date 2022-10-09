CREATE DATABASE library;

SHOW VARIABLES WHERE variable_name LIKE '%dir';
# Datadir é o diretório que diz onde as bases serão criadas fisicamente dentro do disco.
# Datadir está localizada tbm no my.ini
#E se eu quiser mudar o diretório?

#Para apagar um diretório de bases, fazemos 
DROP DATABASE library;

