/*9.O Funcionário João Paulo solicitou uma pesquisa para saber quantas obras do gênero ‘Ficção’ existem no acervo.*/
SELECT COUNT(o.ID_obra) AS 'Quantidade Obras do genero ficção'
FROM obra AS o
         JOIN genero as gen on o.ID_genero =  gen.ID_Genero
WHERE gen.nome_genero='Ficção';

