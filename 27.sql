#27.O Financeiro solicitou a lista de todas as obras que tiveram data de publicação menor que 04/03/2013, sua respectiva  quantidade e o seu valor unitário.

SELECT
    
    o.titulo_obra as "Nome do Livro",
    o.valor_unitario as "Preço",
    e.Quantidade_livro as "Quantidade no estoque"
    FROM obra AS o
    JOIN estoque as e on o.ID_obra = e.ID_obra
    
WHERE o.data_publicacao < '2013-03-04'