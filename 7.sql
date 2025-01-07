#7.A área de RH solicitou uma pesquisa para saber quais devoluções de livros
#foram feitas antes de 29/03/2012.
SELECT dev.data_devolucao as 'Data de devolucao', 
dev.hora_devolucao as 'Hora de Devolucao',
o.titulo_obra as 'Titulo', 
fun.nome_funcionario as 'Nome do Funcionario',
if (dev.multa_atraso>0,'SIM','NAO') as 'Multa(Sim/Nao)'
FROM devolucao as dev
INNER JOIN funcionario as fun on dev.ID_funcionario = fun.ID_funcionario
INNER JOIN obra as o on o.ID_obra = dev.ID_obra
WHERE data_devolucao < '2012-03-29';
WHERE data_devolucao < '2012-03-29';
