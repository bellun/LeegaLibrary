#24.A Diretoria solicitou a lista de todos os livros que já foram 
#emprestados mas foram entregues com atraso e os respectivos os 
#nomes dos funcionários que fizeram os empréstimos.

SELECT f.nome_funcionario 'Nome do funcionário que emprestou',
o.titulo_obra as 'Título da obra',
e.data_entrega as'Data de devolução requerida', 
d.data_devolucao as 'Data de devolução realizada',
d.multa_atraso as 'Multa?'
FROM obra o
INNER JOIN emprestimo e ON e.ID_obra = o.ID_obra
INNER JOIN devolucao d ON e.ID_obra = d.ID_obra
INNER JOIN funcionario f ON f.ID_funcionario = e.ID_funcionario
WHERE d.multa_atraso = 'SIM'