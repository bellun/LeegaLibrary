#51.Foi solicitada a pesquisa de qual a hora que a biblioteca tem 
#mais movimento e, também, qual o horário de menor movimentação,
#faça a avaliação de todas as horas de devolução, empréstimo e reserva.

SELECT
    CASE
        WHEN HOUR(hora_movimento) BETWEEN 00 AND 11 THEN 'Manhã'
        WHEN HOUR(hora_movimento) BETWEEN 12 AND 17 THEN 'Tarde '
        WHEN HOUR(hora_movimento) BETWEEN 18 AND 24 THEN 'Noite '
        END AS Periodo,
    COUNT(*) AS Total_Movimentos
FROM (
         SELECT hora_devolucao AS hora_movimento FROM devolucao WHERE hora_devolucao IS NOT NULL
         UNION ALL
         SELECT hora_emprestimo AS hora_movimento FROM emprestimo WHERE hora_emprestimo IS NOT NULL
         UNION ALL
         SELECT hora_reserva AS hora_movimento FROM reserva WHERE hora_reserva IS NOT NULL
     ) AS movimentos
GROUP BY Periodo
ORDER BY Total_Movimentos DESC;

