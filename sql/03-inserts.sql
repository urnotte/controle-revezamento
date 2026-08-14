INSERT INTO tb_tipo_membro (descricao)
VALUES
    ('Revezante'),
    ('Financeiro'),
    ('Administrador');

---

INSERT INTO tb_status_participacao (descricao)
VALUES
    ('Presente'),
    ('Ausente'),
    ('Justificado'),
    ('Financeiro');

---

INSERT INTO tb_status_financeiro (descricao)
VALUES
    ('Pendente'),
    ('Pago'),
    ('Atrasado'),
    ('Parcial'),
    ('Isento'),
    ('Cancelado');

---

INSERT INTO tb_local (nome_local, observacao)
VALUES
    (
        'Monumento à Independência',
        'Local principal do revezamento.'
    ),
    (
        'Museu do Ipiranga',
        'Local utilizado durante o check-in e ronda.'
    );

INSERT INTO tb_membro (
    nome,
    data_inicio,
    observacao,
    ativo
)
VALUES
    ('Joana',     '2026-01-16', NULL, TRUE),
    ('Vinicius',  '2026-01-16', NULL, TRUE),
    ('Jorge',     '2026-01-16', NULL, TRUE),
    ('Matheus',   '2026-01-16', NULL, TRUE),
    ('Mariana',   '2026-01-16', NULL, TRUE),
    ('Lucas',     '2026-01-16', NULL, TRUE),
    ('Renata',    '2026-01-16', NULL, FALSE),
    ('Samanta',   '2026-01-16', NULL, TRUE);

---

INSERT INTO tb_membro_tipo (
    id_membro,
    id_tipo
)
VALUES
    (1, 3),
    (2, 1),
    (3, 3),
    (4, 1),
    (5, 2),
    (6, 1),
    (7, 2),
    (8, 1);

---

INSERT INTO tb_semana (
    data_inicio,
    data_fim
)
VALUES
    (
        '2026-01-16',
        '2026-03-31'
    );

---

INSERT INTO tb_escala (
    id_semana,
    id_local,
    horario_inicio,
    horario_fim
)
VALUES
    (
        1,
        1,
        '10:00',
        '17:00'
    );