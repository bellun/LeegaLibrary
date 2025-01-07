/*48.Carlos pediu que seja feita uma pesquisa informando  de todos os usuários que tem cadastro na biblioteca e
  que nunca levaram livros mostrar o nome de todos em Maiúsculas.*/

SELECT
   UPPER( u.nome_usuario) AS 'NOME EM MAIUSCULO'
FROM usuario AS u
left JOIN emprestimo AS e on u.ID_usuario = e.ID_usuario
WHERE e.ID_usuario IS NULL ;