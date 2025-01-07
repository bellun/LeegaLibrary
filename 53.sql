/*53.Crie uma tabela que exiba uma lista de todos livros por funcionario, o total de empréstimos e devoluções que cada um atendeu.*/
START TRANSACTION ;

CREATE TEMPORARY TABLE livros_func_emp_dev AS
SELECT
    f.nome_funcionario AS 'Nome do Funcionário',
    o.titulo_obra AS 'Nome do Livro',
    COUNT(DISTINCT e.ID_emprestimo) AS 'Total de Empréstimos',
    COUNT(DISTINCT d.ID_devolucao) AS 'Total de Devoluções'

FROM
    funcionario AS f
        LEFT JOIN  emprestimo AS e ON f.ID_funcionario = e.ID_funcionario
        LEFT JOIN  devolucao AS d ON f.ID_funcionario = d.ID_funcionario
        LEFT JOIN  estoque AS es ON e.ID_estoque = es.ID_estoque
        LEFT JOIN  obra AS o ON es.ID_obra = o.ID_obra

GROUP BY  f.nome_funcionario, o.titulo_obra
ORDER BY  f.nome_funcionario, o.titulo_obra;

SELECT * FROM livros_func_emp_dev;

ROLLBACK ;