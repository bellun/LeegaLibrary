#29.A Gerência solicitou uma lista de todos os livros com os nomes dos autores, nomes das editoras e a quantidade de livros em estoque.

SELECT
    a.nome_autor AS "Nome do Autor",
    o.titulo_obra AS "Título do Livro",
    e.nome_editora AS "Nome da Editora",
    es.quantidade_livro AS "Quantidade em Estoque"
FROM obra AS o
        JOIN obra_autor AS oa ON o.ID_obra = oa.ID_obra
        JOIN autor AS a ON oa.ID_autor = a.ID_autor
        JOIN editora AS e ON o.ID_editora = e.ID_editora
        JOIN estoque AS es ON o.ID_obra = es.ID_obra
ORDER BY a.nome_autor;


