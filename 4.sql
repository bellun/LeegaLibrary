#4.O Funcionário João Paulo Assistente de RH solicitou uma pesquisa 
#que informasse todos os empréstimos que a Recepcionista Alice Meire 
#fez no horário das 8hs as 9hs.
#EXPLAIN FORMAT = JSON
SELECT emp.data_emprestimo as 'Data de Emprestimo', 
emp.data_entrega as 'Data de Entrega', 
emp.hora_emprestimo as 'Hora do Empréstimo',
o.titulo_obra as 'Titulo', 
fun.nome_funcionario as 'Nome do Funcionario'
FROM emprestimo as emp
INNER JOIN funcionario as fun on emp.ID_funcionario = fun.ID_funcionario
INNER JOIN obra as o on o.ID_obra = emp.ID_obra
WHERE fun.nome_funcionario = "Alice Meire" 
AND emp.hora_emprestimo BETWEEN "8:00" AND "9:00";