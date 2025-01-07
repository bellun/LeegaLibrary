#11.O Financeiro precisa saber qual é o livro  que possui a menor quantidade em 
#estoque e quantas vezes ele foi emprestado para que seja feita uma analise para 
#compra de mais alguns exemplares.
EXPLAIN FORMAT = JSON
SELECT 
	o.titulo_obra AS 'Titulo da Obra',
    a.nome_autor AS 'Autor',
    e.nome_editora AS 'Editora',
    es.Quantidade_Livro AS 'Quantidade em Estoque',
        (SELECT count(*)
		FROM emprestimo, estoque es
		WHERE es.Quantidade_Livro = (
				SELECT MIN(Quantidade_Livro)
				FROM estoque)
	AND emprestimo.ID_obra = es.ID_obra) AS 'Quantidade de Emprestimos'
FROM obra o
INNER JOIN editora e ON e.ID_editora = o.ID_editora
INNER JOIN obra_autor oa ON oa.ID_obra = o.ID_obra
INNER JOIN autor a ON a.ID_autor = oa.ID_autor
INNER JOIN estoque es ON es.ID_obra = o.ID_obra
WHERE es.Quantidade_Livro = (
        SELECT MIN(Quantidade_Livro)
        FROM estoque);

