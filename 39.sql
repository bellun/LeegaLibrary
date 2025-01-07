#39.Foi solicitado a busca de informações de todas as obras que foram reservadas no dia 18/08/11 as 15:00 e o nome do responsável pela reserva.

SELECT
    o.titulo_obra AS "Título da Obra",
    u.nome_usuario AS "Responsável pela Reserva",
    r.data_reserva AS "Data da Reserva",
    r.hora_reserva AS "Hora da Reserva"
FROM reserva AS r
    JOIN obra AS o ON r.ID_obra = o.ID_obra
    JOIN usuario AS u ON r.ID_usuario = u.ID_usuario
WHERE
    r.data_reserva = '2011-08-18'
  AND r.hora_reserva = '15:00:00';
