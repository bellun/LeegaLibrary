#13.A Diretoria identificar as obras com os maiores 
#números de publicações agrupados por gênero.
SELECT o.titulo_obra as 'Titulo da Obra',
e.nome_editora as 'Editora',
a.nome_autor as 'Autor',
gen.nome_genero as 'Genero',
o.numero_publicacao 'Numero de Publicacoes'
FROM obra o
INNER JOIN genero as gen on gen.ID_Genero = o.ID_genero
INNER JOIN editora e ON e.ID_editora = o.ID_editora
INNER JOIN obra_autor oa ON oa.ID_obra = o.ID_obra
INNER JOIN autor a ON a.ID_autor = oa.ID_autor
ORDER BY gen.nome_genero, o.numero_publicacao desc