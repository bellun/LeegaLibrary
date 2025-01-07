/*44.Foi solicitado a informação de todos os usuários que morem em uma avenida, e ainda, que seja mostrado o nome do usuário,
CPF e logradouro em ordem de CPF do maior para o menor.*/

SELECT
    nome_usuario,
    CPF,
    logradouro
    FROM usuario
WHERE logradouro LIKE  'Avenida%'
ORDER BY CPF DESC ;