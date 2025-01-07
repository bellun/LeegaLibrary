#41.Hoje é aniversário da biblioteca e para comemorar foram comprados 
#presentes a todos os usuários que foram os primeiros a utilizar a biblioteca, 
#o gerente Carlos mendes pediu a relação da primeira pessoa a reservar,
#pegar emprestado e devolver um livro e suas respectivas informações para
#que possa ser entrado em contato com ele.

(SELECT 
CONCAT('Primeiro Empréstimo: ',e.data_emprestimo) 'Data da Operacao',
u.nome_usuario, u.CPF, u.logradouro, u.bairro, u.CEP, u.telefone
FROM emprestimo e
INNER JOIN usuario u ON u.ID_usuario = e.ID_usuario
ORDER BY e.data_emprestimo
LIMIT 1)

UNION

(SELECT 
CONCAT('Primeira Devolução: ',d.data_devolucao) 'Data da Operacao',
u.nome_usuario, u.CPF, u.logradouro, u.bairro, u.CEP, u.telefone
FROM devolucao d
INNER JOIN usuario u ON u.ID_usuario = d.ID_usuario
ORDER BY d.data_devolucao
LIMIT 1)

UNION

(SELECT 
CONCAT('Primeira Reserva: ',r.data_reserva) 'Data da Operacao',
u.nome_usuario, u.CPF, u.logradouro, u.bairro, u.CEP, u.telefone
FROM reserva r
INNER JOIN usuario u ON u.ID_usuario = r.ID_usuario
ORDER BY r.data_reserva
LIMIT 1)