INSERT INTO CLIENTE (id_cliente, nome, documento_identidade, email, telefone, data_cadastro)
VALUES (1, 'Patricia Silva', '123456789', 'patricia@email.com', '21999998888', '2025-06-20');

INSERT INTO QUARTO (id_quarto, capacidade, banheiro, tipo_quarto, valor_quarto)
VALUES (1, 4, 'Sim', 'Compartilhado', 200.00);

INSERT INTO VAGA (id_vaga, id_quarto, posicao_quarto, tipo_cama, posicao_cama, descricao)
VALUES (1, 1, 'Perto da janela', 'Beliche', 'Superior', 'Sol da manha');

INSERT INTO RESERVA (id_reserva, id_cliente, id_vaga, data_inicio, data_fim, dias_aluguel, data_reserva, status_reserva)
VALUES (1, 1, 1, '2025-07-01', '2025-07-05', 4, '2025-06-20', 'Ativa');

INSERT INTO PAGAMENTO (id_pagamento, id_reserva, valor_total, data_pagamento, status_pagamento)
VALUES (1, 1, 200.00, '2025-06-24', 'Confirmado');

INSERT INTO CANCELAMENTO (id_cancelamento, id_reserva, data_cancelamento, motivo)
VALUES (1, 1, '2025-06-21', 'Mudança de planos');
