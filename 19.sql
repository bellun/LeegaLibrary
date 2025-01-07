#19.A Recepção recebeu a informação que existem dois usuários duplicados na base, será necessária a exclusão de um desses registros.
#Self join

DELETE u1
FROM usuario u1
         INNER JOIN usuario u2 ON u1.CPF = u2.CPF
WHERE u1.ID_usuario > u2.ID_usuario;

##Self Join: A tabela usuario é unida a ela mesma para identificar registros com o mesmo CPF. nesse caso eu deletaria o mais novo id