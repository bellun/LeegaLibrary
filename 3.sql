#3.A Gerência solicitou uma pesquisa para saber quais datas 
#ocorreram empréstimos de livros e a quantidade emprestada. 
#A consulta deverá retornar apenas um registro para cada data.
SELECT emp.data_emprestimo as 'Data de Emprestimo', count(*) as 'Quantidade de Emprestimo'
FROM emprestimo as emp
GROUP BY emp.data_emprestimo;