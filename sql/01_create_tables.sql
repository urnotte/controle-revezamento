-- SISTEMA DE CONTROLE DE REVEZAMENTO
-- Script de Criação das Tabelas

CREATE TABLE tb_membro (
id_membro INTEGER PRIMARY KEY,
nome VARCHAR(100),
data_inicio DATE,
observacao TEXT,
ativo BOOLEAN
);

CREATE TABLE tb_tipo_membro (
id_tipo INTEGER PRIMARY KEY,
descricao VARCHAR(100)
);

CREATE TABLE tb_membro_tipo (
id_membro INTEGER NOT NULL,
id_tipo INTEGER NOT NULL,
PRIMARY KEY (id_membro, id_tipo),
FOREIGN KEY (id_membro) REFERENCES tb_membro(id_membro),
FOREIGN KEY (id_tipo) REFERENCES tb_tipo_membro(id_tipo)
);

CREATE TABLE tb_semana (
id_semana INTEGER PRIMARY KEY,
data_inicio DATE,
data_fim DATE
);

CREATE TABLE tb_status_participacao (
id_status_participacao INTEGER PRIMARY KEY,
descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_participacao (
id_participacao INTEGER PRIMARY KEY,
id_membro INTEGER NOT NULL,
id_semana INTEGER NOT NULL,
id_status_participacao INTEGER NOT NULL,
observacao TEXT,
FOREIGN KEY (id_membro) REFERENCES tb_membro(id_membro),
FOREIGN KEY (id_semana) REFERENCES tb_semana(id_semana),
FOREIGN KEY (id_status_participacao) REFERENCES tb_status_participacao(id_status_participacao)
);
