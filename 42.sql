/*42.Foi solicitado pela diretoria saber quantas obras cada editora tem na biblioteca.*/
SELECT
    e.nome_editora as 'Nome da Editora',
    COUNT(o.ID_obra) AS 'Quantidade de obras'
    FROM obra AS o
JOIN editora AS e on e.ID_Editora = o.ID_editora
GROUP BY e.nome_editora