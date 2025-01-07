#52.A sociedade brasileira de editoras solicitou o levantamento para
#a biblioteca de qual são os 3 autores que tem mais livros lidos no 
#ano de 2012 e 2013 e os 2 que tem menos obras lidas.

(SELECT 
a.nome_autor 'Nome do autor',
count(o.ID_obra) as Lidos,
'3 Mais lidos' as 'Frequência de leitura'
FROM emprestimo e
INNER JOIN obra o ON o.ID_obra = e.ID_obra
INNER JOIN obra_autor oa ON oa.ID_obra = o.ID_obra
INNER JOIN autor a ON a.ID_autor = oa.ID_autor
WHERE YEAR(e.data_emprestimo) BETWEEN '2012' AND '2013'
GROUP BY a.nome_autor	
ORDER BY Lidos DESC
LIMIT 3)
UNION
(SELECT 
a.nome_autor 'Nome do autor',
count(o.ID_obra) as Lidos,
'2 Menos lidos' as 'Frequência de leituras'
FROM emprestimo e
INNER JOIN obra o ON o.ID_obra = e.ID_obra
INNER JOIN obra_autor oa ON oa.ID_obra = o.ID_obra
INNER JOIN autor a ON a.ID_autor = oa.ID_autor
WHERE YEAR(e.data_emprestimo) BETWEEN '2012' AND '2013'
GROUP BY a.nome_autor	
ORDER BY Lidos ASC
LIMIT 2)
