--Disponibilidade
SELECT V.*
FROM VAGA V
WHERE V.id_vaga NOT IN (
    SELECT R.id_vaga
    FROM RESERVA R
    WHERE '2025-07-01' BETWEEN R.data_inicio AND R.data_fim
      AND R.status_reserva = 'Ativa'
);

--Vafas reservadas/indisponivel
SELECT 
    V.id_vaga,
    Q.id_quarto,
    V.posicao_cama,
    V.tipo_cama,
    C.nome AS cliente,
    R.data_inicio,
    R.data_fim
FROM VAGA V
JOIN QUARTO Q ON V.id_quarto = Q.id_quarto
JOIN RESERVA R ON V.id_vaga = R.id_vaga
JOIN CLIENTE C ON R.id_cliente = C.id_cliente
WHERE '2025-07-01' BETWEEN R.data_inicio AND R.data_fim
  AND R.status_reserva = 'Ativa';
