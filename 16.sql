/*16.A Biblioteca recebeu a visita de um grupo de alunos, mas após a visita foi verificado desaparecimento de três livros,
  as obras que sumiram do acervo foram ‘Filho Nativo’, ‘Vidas Secas’ e ‘Dom Casmurro’,
  com isto será necessária a alteração da quantidade de livros no estoque de cada obra.
*/

SELECT E.ID_ESTOQUE , O.titulo_obra, E.Qtde_disponivel
FROM Estoque AS E
         INNER JOIN obra AS o ON O.ID_obra = e.ID_obra
WHERE o.titulo_obra IN('Filho Nativo', 'Vidas Secas', 'Dom Casmurro');


START TRANSACTION ;

UPDATE estoque AS e
    INNER JOIN obra AS o ON O.ID_obra = e.ID_obra
SET e.Qtde_disponivel = e.Qtde_disponivel -1
    WHERE o.titulo_obra IN('Filho Nativo', 'Vidas Secas', 'Dom Casmurro');
rollback ;
#COMMIT;