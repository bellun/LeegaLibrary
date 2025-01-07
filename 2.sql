#2.O Governador vai doar duzentos livros para a Biblioteca, 
# mas só irá doar se a biblioteca tiver menos de 300 obras. 
# O Gerente Márcio Tales solicitou que fosse feita a contagem de quantas obras a Biblioteca possui atualmente.
EXPLAIN FORMAT = JSON
SELECT count(*) as 'Quantidade de Obras'
FROM obra;