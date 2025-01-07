/*57.Foi solicitado apresentarmos quais as 5 obras que tiveram menos publicações e as 5 de maior,
  ainda,  mostrar qual  o autor, editora, nome do livro e quantidade de publicações em ordem decrescente.*/

SELECT * FROM (
                  SELECT
                      o.titulo_obra AS 'Nome do Livro',
                      a.nome_autor AS 'Autor',
                      e.nome_editora AS 'Editora',
                      o.numero_publicacao AS 'Quantidade de Publicações',
                      'Menores Publicações' as 'Ranking'
                  FROM obra AS o
                           JOIN obra_autor AS oa ON o.ID_obra = oa.ID_obra
                           JOIN autor AS a ON oa.ID_autor = a.ID_autor
                           JOIN editora AS e ON o.ID_editora = e.ID_editora
                  ORDER BY o.numero_publicacao ASC
                  LIMIT 5
              ) AS Menores_Publicacoes

UNION ALL

SELECT * FROM (
                  SELECT

                      o.titulo_obra AS 'Nome do Livro',
                      a.nome_autor AS 'Autor',
                      e.nome_editora AS 'Editora',
                      o.numero_publicacao AS 'Quantidade de Publicações',
                      'Top Publicações'
                  FROM obra AS o
                           JOIN obra_autor AS oa ON o.ID_obra = oa.ID_obra
                           JOIN autor AS a ON oa.ID_autor = a.ID_autor
                           JOIN editora AS e ON o.ID_editora = e.ID_editora
                  ORDER BY o.numero_publicacao DESC
                  LIMIT 5
              ) AS Maiores_Publicacoes

ORDER BY `Quantidade de Publicações` DESC;