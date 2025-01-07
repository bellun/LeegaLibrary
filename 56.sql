
/*56.A biblioteca foi comprar mais livros para aumentar seu acervo, mas a editora Saraiva aumentou em 16% o valor de seus livros,
 atualize os preços dos livros da editora na porcentagem designada.*/

SELECT
    o.valor_unitario
FROM editora AS e
         JOIN obra AS o ON o.ID_editora = e.ID_Editora
WHERE e.nome_editora ='Saraiva';

START TRANSACTION;

UPDATE obra AS o
    JOIN editora AS e ON o.ID_editora = e.ID_Editora
SET o.valor_unitario = o.valor_unitario * 1.16
WHERE e.nome_editora = 'Saraiva';

SELECT
    o.titulo_obra AS Titulo,
    o.valor_unitario AS ValorAtualizado
FROM
    obra AS o
        JOIN
    editora AS e ON o.ID_editora = e.ID_Editora
WHERE
    e.nome_editora = 'Saraiva';

ROLLBACK;
#OU COMITAR
#COMMIT;