#25.A Gerência solicitou a lista de todos os livros, cujos autores 
#não são brasileiros, que já foram devolvidos e o valor total de cada livro.

SELECT 
o.titulo_obra as 'Título da obra',
a.nome_autor as 'Nome do Autor',
a.pais_origem as 'País de origem',
o.valor_unitario as 'Valor da obra'
FROM obra o
INNER JOIN obra_autor oa ON oa.ID_obra = o.ID_obra
INNER JOIN autor a ON oa.ID_autor = a.ID_autor
WHERE a.pais_origem <> 'Brasil' 
AND EXISTS (
	SELECT NULL
    FROM devolucao d
    WHERE o.ID_obra = d.ID_obra)
