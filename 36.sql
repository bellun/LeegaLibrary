#36.A Recepção solicitou uma lista  como todos os funcionários da 
#Biblioteca com código, nome, e departamento, classificado pelo 
#nome do funcionário que não emprestaram nenhum livro.

SELECT 
f.ID_funcionario 'Código do funcionário',
f.nome_funcionario 'Nome do funcionário',
d.nome_departamento 'Departamento'
FROM funcionario f 
INNER JOIN cargo c ON c.ID_cargo = f.ID_cargo
INNER JOIN departamento d ON d.ID_departamento = c.ID_departamento
WHERE NOT EXISTS (
	SELECT NULL
    FROM emprestimo e
    WHERE e.ID_funcionario = f.ID_funcionario)
