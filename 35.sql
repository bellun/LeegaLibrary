#35.A Gerência solicitou uma lista de todas as Obras,
# que contenham a letra “C” ordenadas por gênero
#data de publicação entre 2011 e 2013.

SELECT 
g.nome_genero 'Genero',
o.titulo_obra 'Titulo da obra',
year(o.data_publicacao) 'Ano de publicação'
FROM obra o
INNER JOIN genero g ON g.ID_genero = o.ID_genero
WHERE o.titulo_obra LIKE '%' 
AND year(o.data_publicacao) BETWEEN 2011 AND 2013
ORDER BY g.nome_genero, data_publicacao ASC