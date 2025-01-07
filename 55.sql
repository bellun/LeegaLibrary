#55.Foi solicitado a criação de uma visão que traga todos os livros e o preço da editora Leya.
CREATE VIEW Livros_Leya_Valores AS
SELECT
    o.titulo_obra AS 'Nome do Livro',
    o.valor_unitario AS 'Preço'
FROM obra AS o
    JOIN editora as ed ON o.ID_editora = ed.ID_Editora
WHERE nome_editora='Leya'
ORDER BY valor_unitario;

#Rodar a view
SELECT *  from livros_leya_valores;


