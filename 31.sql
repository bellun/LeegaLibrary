# O Financeiro solicitou a criação de uma visão que retorne o nome do livro, seu autor e o valor.
CREATE VIEW Livros_Autores_Valores AS
SELECT
    O.Titulo_Obra AS 'Nome do Livro',
    A.Nome_Autor AS Autor,
    O.Valor_Unitario AS Valor
FROM
    Obra O
        JOIN Obra_Autor OA ON O.ID_Obra = OA.ID_Obra
        JOIN Autor A ON OA.ID_Autor = A.ID_Autor
ORDER BY Valor;

#SELECT DA VIEW
SELECT * FROM Livros_Autores_Valores;