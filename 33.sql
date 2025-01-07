#33.A área de RH solicitou a atualização do salário do Auxiliar Financeiro de 12% sobre o seu salário atual.
/*
SELECT *
FROM cargo
WHERE nome_cargo = 'Auxiliar Financeiro';
START TRANSACTION;

UPDATE cargo
SET
salario = salario*1.12
WHERE nome_cargo = 'Auxiliar Financeiro';

ROLLBACK;
*/

