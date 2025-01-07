
/*50.A diretoria pediu que fosse feito uma analise do estoque, apresentando uma lista com todos os livros que já foram reservados
  e emprestados e, mostrar quantos estão disponíveis classificados por Gênero.*/

SELECT
    g.nome_genero as GENERO,
    SUM(e.Qtde_disponivel) as 'Quantidade disponível no estoque',
    COUNT(DISTINCT r.ID_reserva) as 'Total Reservado',
    COUNT(DISTINCT emp.ID_emprestimo) as 'Total emprestado'
FROM genero AS g
    JOIN obra as o on g.ID_Genero = o.ID_genero
    LEFT JOIN estoque as e on e.ID_obra = o.ID_obra
    LEFT JOIN reserva as r on o.ID_obra = r.ID_obra
    LEFT JOIN emprestimo as emp on o.ID_obra = emp.ID_obra
WHERE r.ID_reserva IS NOT NULL OR emp.ID_emprestimo IS NOT NULL
group by g.nome_genero