/*34.O Financeiro solicitou uma atualização da data de demissão da funcionária Alice Meire para o último dia do Mês que você se encontra atualmente.*/

START TRANSACTION ;
UPDATE funcionario
    SET data_demissao = LAST_DAY(CURDATE())
WHERE nome_funcionario = 'Alice Meire';

SELECT
    *
FROM funcionario
WHERE nome_funcionario ='Alice Meire';

ROLLBACK;