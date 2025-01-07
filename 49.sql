#49.A recepção pediu para verificar quais os usuários que 
#já pegaram mais de 3 livros, e em caso positivo, mostrar
#nomes e quais livros, ordenando pelo CEP (crescente).

SELECT 
u1.nome_usuario 'Nome do usuário',
o.titulo_obra 'Titulo da obra',
u1.CEP 'CEP'
FROM usuario u1
INNER JOIN emprestimo e1 ON e1.ID_usuario = u1.ID_usuario
INNER JOIN obra o ON o.ID_obra = e1.ID_obra
WHERE u1.ID_usuario IN (
	SELECT u.ID_usuario
	FROM usuario u 
	INNER JOIN emprestimo e ON e.ID_usuario = u.ID_usuario
	INNER JOIN obra o ON o.ID_obra = e.ID_obra
	GROUP BY u.ID_usuario
	HAVING count(u.ID_usuario) >=2)
ORDER BY u1.CEP
