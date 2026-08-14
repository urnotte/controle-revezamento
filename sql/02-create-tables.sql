
-- ==========================================================
-- Tabela: tipo_membro
-- ==========================================================
CREATE TABLE tb_tipo_membro (
    id_tipo INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL UNIQUE
);

-- ==========================================================
-- Tabela: membro
-- ==========================================================
CREATE TABLE tb_membro (
    id_membro INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_inicio DATE NOT NULL,
    observacao TEXT,
    ativo BOOLEAN NOT NULL
);

-- ==========================================================
-- Tabela: membro_tipo
-- ==========================================================
CREATE TABLE tb_membro_tipo (
    id_membro INTEGER NOT NULL,
    id_tipo INTEGER NOT NULL,

    PRIMARY KEY (id_membro, id_tipo)
);

-- ==========================================================
-- Tabela: local
-- ==========================================================
CREATE TABLE tb_local (
    id_local INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_local VARCHAR(100) NOT NULL,
    observacao TEXT
);

-- ==========================================================
-- Tabela: semana
-- ==========================================================
CREATE TABLE tb_semana (
    id_semana INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    data_inicio DATE NOT NULL UNIQUE,
    data_fim DATE NOT NULL
);

-- ==========================================================
-- Tabela: status_participacao
-- ==========================================================
CREATE TABLE tb_status_participacao (
    id_status_participacao INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL UNIQUE
);

-- ==========================================================
-- Tabela: status_financeiro
-- ==========================================================
CREATE TABLE tb_status_financeiro (
    id_status_financeiro INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL UNIQUE
);

-- ==========================================================
-- Tabela: escala
-- ==========================================================
CREATE TABLE tb_escala (
    id_escala INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_semana INTEGER NOT NULL,
    id_local INTEGER NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL
);

-- ==========================================================
-- Tabela: participacao
-- ==========================================================
CREATE TABLE tb_participacao (
    id_participacao INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_membro INTEGER NOT NULL,
    id_escala INTEGER NOT NULL,
    id_status_participacao INTEGER NOT NULL,
    observacao TEXT
);

-- ==========================================================
-- Tabela: registro_horario
-- ==========================================================
CREATE TABLE tb_registro_horario (
    id_registro INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_participacao INTEGER NOT NULL,
    data_participacao DATE NOT NULL,
    hora_chegada TIME NOT NULL,
    hora_saida TIME NOT NULL,
    verificacao VARCHAR(100) NOT NULL
);

-- ==========================================================
-- Tabela: financeiro
-- ==========================================================
CREATE TABLE tb_financeiro (
    id_financeiro INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_membro INTEGER NOT NULL,
    id_semana INTEGER NOT NULL,
    valor DECIMAL(10,2),
    data_pagamento DATE,
    id_status_financeiro INTEGER NOT NULL,
    observacao TEXT
);