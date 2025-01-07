#40.O financeiro solicitou o levantamento da informação de quando as usuárias 
#Emily Mall e Whitney Cinse pegaram livros emprestados, quais foram os
#livros e seus respectivos valores unitários.

SELECT 
u.nome_usuario 'Nome usuário',
o.titulo_obra 'Título da Obra',
o.valor_unitario 'Valor',
e.data_emprestimo 'Data do empréstimo'
FROM obra o
INNER JOIN emprestimo e ON e.ID_obra = o.ID_obra
INNER JOIN usuario u ON u.ID_usuario = e.ID_usuario
WHERE u.nome_usuario IN('Emily Mall','Whitney Cinse')
ORDER BY u.nome_usuario, e.data_emprestimo
