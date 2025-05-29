USE clinica_estetica;

INSERT INTO CLIENTE (cpf, nome_completo, contato_telefonico, email, data_cadastro, credito_acumulado)
VALUES 
    ('123.456.789-00', 'Maria Silva', '(21) 9999-8888', 'maria@email.com', '10/05/2023', 0),
    ('987.654.321-00', 'João Santos', '(21) 7777-6666', 'joao@email.com', '15/03/2023', 50.00);

INSERT INTO PROFISSIONAL (cpf, nome_completo, especialidade, data_admissao)
VALUES 
    ('111.222.333-44', 'Ana Oliveira', 'Massagem', '01/02/2022'),
    ('555.666.777-88', 'Carlos Lima', 'Depilação', '10/10/2021');

INSERT INTO ESPECIALIDADE_PROFISSIONAL (cpf_profissional, dia_semana, hora_inicio, hora_termino)
VALUES 
    ('111.222.333-44', 'Segunda', '09:00', '18:00'),
    ('555.666.777-88', 'Quarta', '10:00', '19:00');

INSERT INTO SERVICO (nome_servico, descricao_detalhada, duracao_minutos, valor_base, tipo)
VALUES 
    ('Massagem Relaxante', 'Massagem com óleos essenciais', 60, 120.00, 'Estética'),
    ('Depilação a Laser', 'Sessão de depilação a laser', 30, 80.00, 'Estética');

INSERT INTO PACOTE (nome_pacote, descricao, quantidade_sessoes, percentual_desconto)
VALUES 
    ('Pacote Beleza Total', '5 sessões de tratamentos estéticos', 5, 15.00),
    ('Pacote Relaxamento', '3 sessões de massagem', 3, 10.00);

INSERT INTO AGENDAMENTO (data_hora_inicio, data_hora_termino, status, valor_total_pago, forma_pagamento, cpf_cliente)
VALUES 
    ('15/06/2023 14:00', '15/06/2023 15:00', 'Confirmado', 120.00, 'Cartão', '123.456.789-00');

INSERT INTO ITEM_AGENDAMENTO (id_agendamento, valor_cobrado, desconto)
VALUES 
    (1, 120.00, 0.00);

INSERT INTO FILA_ESPERA (data_hora_chegada, status)
VALUES 
    ('15/06/2023 13:30', 'Aguardando');
