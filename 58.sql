
/*
58.Fazem cento e noventa e três meses que o instituto bibliográfico brasileiro surgiu.
Para comemorar a diretoria pediu a relação de todos os usuários que tem o cpf com o começo 193 que receberão um presente de comemoração.
Para isto, foi solicitado informar o nome e o cpf de todos os usuários que estejam nesse padrão mas mostrar cpf os 3 primeiros dígitos e os dois últimos os do meio apresentar um "*" como no exemplo: 193.***.***-35,
lembrando que devemos apresentar dessa maneira, pois a diretoria quer preservar essas informações que são sigilosas.
*/
SELECT
    Nome_Usuario,
    CONCAT(SUBSTRING(CPF, 1, 3), '.***.***-', SUBSTRING(CPF, 12, 2)) AS CPF_Mascarado
FROM
    Usuario
WHERE
    CPF LIKE '193%';
