/*54.A biblioteca quer fechar parceria com as editoras, e existem usuários que trabalham nas editoras facilitando esse contato, para tanto,
  verificar quais usuários possuem o mesmo endereço das editoras, informe seu nome, telefone e o nome da editora que trabalha.*/

SELECT
    u.nome_usuario AS 'Nome do Usuário',
    u.telefone AS 'Telefone',
    e.nome_editora AS 'Nome da Editora'
FROM
    usuario AS u
        JOIN
    editora AS e
    ON
        u.logradouro = e.logradouro
            AND u.logradouro = e.Logradouro
ORDER BY
    u.nome_usuario ASC;
