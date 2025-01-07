
/*32.A Recepção solicitou uma lista com o código do livro, nome do livro cujo valor do livro seja maior que  R$ 90,00.*/

    SELECT
        ID_obra as 'codigo do livro',
        titulo_obra as 'Nome do Livro',
        valor_unitario as 'Preço'
        FROM obra
    WHERE valor_unitario>90.00
    ORDER BY  obra.valor_unitario DESC;