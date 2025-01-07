/*37.A Biblioteca solicitou uma lista que exiba a quantidade de logradouros de usuários agrupados por número do CEP.*/
SELECT
    CEP,
    COUNT(logradouro) AS quantidade_logradouros
FROM
    usuario
GROUP BY
    CEP
ORDER BY
    quantidade_logradouros DESC;
