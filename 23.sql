#23.A Diretoria solicitou a exclusão do campo Valor_Livro da tabela Obra pois, o pedido feito pelo Financeiro estava errado.
SELECT * FROM obra limit 5;
ALTER TABLE obra
    DROP COLUMN Valor_Livro;
#COMMIT