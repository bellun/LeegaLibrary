#6.A Gerência solicitou uma pesquisa para saber quais reservas de 
#livros que foram feitas com data maior  ou igual a 18/08/2011 
#que ainda possuem o status de “reservado”.
SELECT res.data_reserva as 'Data da Reserva',
us.nome_usuario as 'Nome do Usuario',
fun.nome_funcionario 'Nome do Funcionario',
res.status_livro as 'Status do Livro'
FROM reserva as res
INNER JOIN usuario as us on us.ID_usuario = res.ID_usuario
INNER JOIN funcionario as fun on fun.ID_funcionario = res.ID_funcionario
WHERE res.data_reserva >= '2011-08-18' 
AND res.status_livro = 'Reservado';