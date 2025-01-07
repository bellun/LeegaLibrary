/*38.A Diretoria  solicitou uma lista que exiba a quantidade de endereços agrupados por usuário.*/
SELECT
    ID_usuario,
    nome_usuario as 'Nome do usuário',
    COUNT(*) AS quantidade_enderecos
FROM
    usuario
GROUP BY
    ID_usuario
ORDER BY
    quantidade_enderecos DESC;