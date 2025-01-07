#26.A área de RH solicitou a lista de todos usuários que fizeram empréstimo com o dia de entrega igual 21/08/2011.
SELECT 
    U.nome_usuario AS Nome_Usuario
FROM usuario AS U
JOIN emprestimo AS E ON U.ID_usuario = E.ID_usuario
WHERE 
    E.Data_entrega = '2011-08-21';
