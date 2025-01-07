#1.A Diretora Camilla Prado solicitou uma pesquisa que informe 
#todas as obras cadastradas no acervo ordenadas por data de publicação.
SELECT obra.titulo_obra as 'Titulo da Obra'
FROM obra
ORDER BY data_publicacao;