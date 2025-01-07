#8.A Gerência solicitou uma pesquisa para saber quais obras existem no acervo que 
#são diferentes dos títulos das obras ‘O Conde de Monte Cristo’ e ‘Filhos e Amantes’.
USE leegasql2;
SELECT o.titulo_obra as 'Titulo da Obra',
aut.nome_autor as 'Nome Autor',
o.data_publicacao as 'Data de Publicacao',
o.numero_publicacao as 'Numero de Publicacao',
gen.nome_genero as 'Genero da Obra',
edit.nome_editora as 'Editora'
FROM obra as o
INNER JOIN autor as aut ON aut.ID_autor = o.ID_autor
INNER JOIN genero as gen ON gen.ID_genero = o.ID_genero
INNER JOIN editora as edit ON edit.ID_Editora = o.ID_editora
WHERE Titulo_Obra NOT IN ('O Conde de Monte Cristo', 'Filhos e Amantes') 