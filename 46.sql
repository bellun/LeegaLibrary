/*46.O Financeiro pediu para apresentar o valor médio dos livros e informar quais são os que estão abaixo dessa media,
  referente a devolução e empréstimo.*/

WITH valorMedio AS(
    SELECT
        AVG(valor_unitario) AS Preco_Medio
    FROM obra )

(SELECT
    'EMPRESTIMO' AS 'REFERENTE A',
    titulo_obra,
    valor_unitario
    FROM obra
JOIN devolucao AS d on obra.ID_obra = d.ID_obra
WHERE  valor_unitario < (SELECT Preco_Medio from valorMedio))

UNION ALL

(SELECT
    'REFERENTE DEVOLUCAO',
    titulo_obra,
    valor_unitario
FROM obra
         JOIN emprestimo AS e on obra.ID_obra = e.ID_obra
WHERE  valor_unitario < (SELECT Preco_Medio from valorMedio))