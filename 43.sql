#43.É fechamento referente ao mês de janeiro (hoje dia 03/02/2013) e a biblioteca 
#está no vermelho, foi solicitado pelo financeiro que fosse feito um levantamento
#de todos os livros que não foram devolvidos, mostrando quantos dias de atraso e 
#para cada dia foi dado uma multa de 5 reais, e mostrar o nome do usuário , livro
#emprestado e o total a receber pela biblioteca.

SELECT 
u.nome_usuario 'Nome do usuário',
o.titulo_obra 'Titulo da obra',
e.data_entrega 'Data para entregar',
CONCAT('R$',DATEDIFF('2013-02-03',e.data_entrega)*5.00) as 'Total a receber'
FROM emprestimo e
INNER JOIN usuario u ON u.ID_usuario = e.ID_usuario
INNER JOIN obra o ON o.ID_obra = e.ID_obra
WHERE NOT EXISTS(
		SELECT NULL
        FROM devolucao d
        WHERE e.ID_emprestimo = d.ID_emprestimo)
AND e.data_entrega < '2013-02-03';