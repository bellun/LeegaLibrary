#47.Barbara do financeiro pediu para verificar qual a media 
#do salario dos funcionários e quem são os que ganham mais 
#do que a media em cada departamento.

SELECT
f.nome_funcionario 'Nome do funcionário',
d.nome_departamento
FROM funcionario f
INNER JOIN cargo c ON c.ID_cargo = f.ID_cargo
LEFT JOIN departamento d ON d.ID_departamento = c.ID_departamento 
WHERE c.salario > (SELECT AVG(c1.salario)
FROM cargo c1)
ORDER BY d.nome_departamento
