#21.A Consultoria verificou que o campo Multa_Atraso está com o tamanho Varchar(2),
# foi solicitada a alteração do campo para  Varchar(3).

DESCRIBE devolucao;
ALTER TABLE devolucao
MODIFY COLUMN multa_atraso VARCHAR(3);
DESCRIBE devolucao;


