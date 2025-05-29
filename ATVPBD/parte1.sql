CREATE DATABASE IF NOT EXISTS clinica_estetica;
USE clinica_estetica;

CREATE TABLE CLIENTE (
    cpf VARCHAR(14) PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    contato_telefonico VARCHAR(20),
    email VARCHAR(100),
    data_cadastro VARCHAR(20), -- Mantido como string conforme PDF
    credito_acumulado FLOAT
);

CREATE TABLE PROFISSIONAL (
    cpf VARCHAR(14) PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    data_admissao VARCHAR(20) -- Mantido como string conforme PDF
);

CREATE TABLE ESPECIALIDADE_PROFISSIONAL (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf_profissional VARCHAR(14),
    dia_semana VARCHAR(15),
    hora_inicio VARCHAR(10),
    hora_termino VARCHAR(10),
    FOREIGN KEY (cpf_profissional) REFERENCES PROFISSIONAL(cpf)
);

CREATE TABLE FILA_ESPERA (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_hora_chegada VARCHAR(20),
    status VARCHAR(20)
);

CREATE TABLE AGENDAMENTO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_hora_inicio VARCHAR(20),
    data_hora_termino VARCHAR(20),
    status VARCHAR(20),
    valor_total_pago FLOAT,
    forma_pagamento VARCHAR(20),
    cpf_cliente VARCHAR(14),
    FOREIGN KEY (cpf_cliente) REFERENCES CLIENTE(cpf)
);

CREATE TABLE ITEM_AGENDAMENTO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_agendamento INT,
    valor_cobrado FLOAT,
    desconto FLOAT,
    FOREIGN KEY (id_agendamento) REFERENCES AGENDAMENTO(id)
);

CREATE TABLE SERVICO (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_servico VARCHAR(50),
    descricao_detalhada TEXT,
    duracao_minutos INT,
    valor_base FLOAT,
    tipo VARCHAR(20)
);

CREATE TABLE PACOTE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_pacote VARCHAR(50),
    descricao TEXT,
    quantidade_sessoes INT,
    percentual_desconto FLOAT
);
