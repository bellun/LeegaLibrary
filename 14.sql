#14.A Funcionária Alice Meire solicitou a alteração 
#da obra ‘Discurso do Método’ para o gênero Política.
##vai mudar o id de 5 para 3
/*SELECT gen.ID_Genero,gen.nome_genero
FROM obra o, genero gen
WHERE o.ID_genero = gen.ID_Genero
AND o.titulo_obra = 'Discurso do Método';*/

#START TRANSACTION;
/*
#resposta
SELECT @idobra := o1.ID_obra,
@idgen := gen1.ID_Genero
FROM obra o1, genero gen1
WHERE o1.titulo_obra = 'Discurso do Método' 
AND gen1.nome_genero = 'Política';

UPDATE obra o
SET o.ID_genero = @idgen 
WHERE o.ID_obra = @idobra;
*/
#ROLLBACK