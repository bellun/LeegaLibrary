/*45.Chegou na biblioteca uma mensagem urgente da Camila pedindo um relatório contendo a informação de todos os livros que
  foram emprestados mais de uma vez nos anos de 2011 a 2013 agrupados pelo nome do livro.*/

SELECT
    o.titulo_obra AS "Nome do Livro",
    COUNT(emp.ID_emprestimo) AS "Quantidade de Empréstimos"
FROM obra AS o JOIN emprestimo AS emp ON o.ID_obra = emp.ID_obra
WHERE YEAR(emp.Data_emprestimo) BETWEEN 2011
      AND 2013
GROUP BY o.titulo_obra
HAVING COUNT(emp.ID_emprestimo) > 1
ORDER BY "Quantidade de Empréstimos" DESC;