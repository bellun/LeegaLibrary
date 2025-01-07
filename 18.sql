#18. Gerência solicitou uma consulta para verificar se existe duplicidade de usuários no Banco de Dados.

SELECT
    nome_usuario,
    CPF,
    COUNT(*) AS qtd_duplicados
FROM usuario
GROUP BY nome_usuario, CPF
HAVING COUNT(*) > 1;