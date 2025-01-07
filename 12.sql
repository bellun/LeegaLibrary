#12.A área de RH precisa identificar a quantidade total 
#dos empréstimos feitos por cada funcionário ativos.
SELECT fun.nome_funcionario as 'Nome do Funcionario',
count(*) as 'Total de Emprestimos'
FROM emprestimo as emp
INNER JOIN funcionario as fun on emp.ID_funcionario = fun.ID_funcionario
WHERE fun.status_ativo = 'ativo'
GROUP BY fun.ID_funcionario

