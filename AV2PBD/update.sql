UPDATE CLIENTE SET email = 'pati@email.com', telefone = '21988887777' WHERE id_cliente = 1;

UPDATE VAGA SET posicao_quarto = 'Perto da porta', tipo_cama = 'Solteiro', descricao = 'Cama próxima ao banheiro' WHERE id_vaga = 1;

UPDATE QUARTO SET capacidade = 6, valor_quarto = 250.00 WHERE id_quarto = 1;

UPDATE RESERVA SET status_reserva = 'Concluída', data_inicio = '2025-07-01', data_fim '2025-07-04', dias_aluguel = 3 WHERE id_reserva = 1;

UPDATE PAGAMENTO SET status_pagamento = 'Pendente', valor_total = 180.00 WHERE id_pagamento = 1;

UPDATE CANCELAMENTO SET motivo = 'Cliente desistiu por problemas pessoais' WHERE id_cancelamento = 1;
