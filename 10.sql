#10.A Diretoria solicitou uma pesquisa para identificar qual o livro 
#possuiu a maior quantidade em estoque, incluir respectiva editora e o respectivo autor.
#EXPLAIN FORMAT = JSON
#Modo 1
WITH MaiorEstoque AS ( 
SELECT ID_obra, MAX(Quantidade_Livro) AS MaiorQuantidade FROM estoque GROUP BY ID_obra ) 
SELECT o.titulo_obra as 'Titulo da Obra',
a.nome_autor AS 'Autor',
e.nome_editora AS 'Editora',
me.MaiorQuantidade AS 'Quantidade'
FROM obra o 
INNER JOIN editora e ON e.ID_editora = o.ID_editora 
INNER JOIN obra_autor oa ON oa.ID_obra = o.ID_obra 
INNER JOIN autor a ON a.ID_autor = oa.ID_autor 
INNER JOIN MaiorEstoque me ON me.ID_obra = o.ID_obra 
WHERE me.MaiorQuantidade = (SELECT MAX(MaiorQuantidade) FROM MaiorEstoque);


#Modo 2
#EXPLAIN FORMAT = JSON 
SELECT 
	o.titulo_obra AS 'Titulo da Obra',
    a.nome_autor AS 'Autor',
    e.nome_editora AS 'Editora',
    es.Quantidade_Livro AS 'Quantidade'
FROM obra o
INNER JOIN editora e ON e.ID_editora = o.ID_editora
INNER JOIN obra_autor oa ON oa.ID_obra = o.ID_obra
INNER JOIN autor a ON a.ID_autor = oa.ID_autor
INNER JOIN estoque es ON es.ID_obra = o.ID_obra
WHERE es.Quantidade_Livro = (
        SELECT MAX(Quantidade_Livro)
        FROM estoque);