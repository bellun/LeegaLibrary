#28.A área de RH solicitou a lista de todos os funcionários 
#separados por ativos ou não, seus respectivos cargos e salários.

SELECT 
f.status_ativo 'Ativo?',
f.nome_funcionario 'Nome do funcionário',
c.nome_cargo 'Cargo',
c.salario 'Salario'
FROM funcionario f
INNER JOIN cargo c ON c.ID_cargo = f.ID_cargo
ORDER BY f.status_ativo 
