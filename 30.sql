/*30.A Diretoria solicitou a lista de todos os funcionários da Biblioteca com seus respectivos departamentos que tem idade entre 30 e 40 anos.*/
SELECT
    f.nome_funcionario AS 'Nome do Funcionário',
    d.nome_departamento AS 'Departamento',
    TIMESTAMPDIFF(YEAR, f.nascimento, CURDATE()) AS 'Idade'
FROM funcionario AS f
         JOIN cargo AS c ON f.ID_cargo = c.ID_cargo
         LEFT JOIN departamento AS d ON c.ID_departamento = d.ID_departamento
WHERE TIMESTAMPDIFF(YEAR, f.nascimento, CURDATE()) BETWEEN 30 AND 40;