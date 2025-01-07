/*22.Foi verificado que o campo Multa_Atraso está com os registros preenchidos de forma errada,
foi solicitada a alteração dos registros que forem 0 para Não e 1 para SIM.*/
## Lembrar> SGBD não permitiu realizar o comando usando when,then enlse pq é um update unsafe

UPDATE devolucao
    SET Multa_Atraso = 'Não'
WHERE Multa_Atraso = '0';

UPDATE devolucao
    SET Multa_Atraso = 'SIM'
WHERE Multa_Atraso = '1';

SELECT * FROM devolucao limit 5;
