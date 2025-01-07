
/*20.O Financeiro solicitou a inserção do valor individual de cada obra. Crie um campo com o nome Valor_Livro  na tabela Obra.
Defina o tipo de dados que poderá ser aceito e o valor de cada título.*/

START TRANSACTION ;
ALTER TABLE obra
    ADD COLUMN Valor_Livro DECIMAL(10,2) NOT NULL DEFAULT 0.00;
ROLLBACK ;
