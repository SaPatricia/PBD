CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    documento_identidade VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    data_cadastro DATE NOT NULL
);

CREATE TABLE QUARTO (
    id_quarto INT PRIMARY KEY,
    capacidade INT NOT NULL,
    banheiro VARCHAR(10) NOT NULL,
    tipo_quarto VARCHAR(50) NOT NULL,
    valor_quarto FLOAT NOT NULL
);

CREATE TABLE VAGA (
    id_vaga INT PRIMARY KEY,
    id_quarto INT NOT NULL,
    posicao_quarto VARCHAR(50) NOT NULL,
    tipo_cama VARCHAR(50) NOT NULL,
    posicao_cama VARCHAR(50) NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_quarto) REFERENCES QUARTO(id_quarto)
);

CREATE TABLE RESERVA (
    id_reserva INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vaga INT NOT NULL,
    data_inicio VARCHAR(50) NOT NULL,
    data_fim VARCHAR(50) NOT NULL,
    dias_aluguel INT NOT NULL,
    data_reserva DATE NOT NULL,
    valor_diaria FLOAT NOT NULL,
    status_reserva VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_vaga) REFERENCES VAGA(id_vaga)
);

CREATE TABLE PAGAMENTO (
    id_pagamento INT PRIMARY KEY,
    id_reserva INT NOT NULL,
    valor_total FLOAT NOT NULL,
    data_pagamento DATE NOT NULL,
    status_pagamento VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_reserva) REFERENCES RESERVA(id_reserva)
);

CREATE TABLE CANCELAMENTO (
    id_cancelamento INT PRIMARY KEY,
    id_reserva INT NOT NULL,
    data_cancelamento DATE NOT NULL,
    motivo TEXT NOT NULL,
    FOREIGN KEY (id_reserva) REFERENCES RESERVA(id_reserva)
);
