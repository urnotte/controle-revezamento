-- ==========================================================
-- CONSULTAS DE VALIDAÇÃO
-- Projeto: Sistema de Controle de Revezamento
-- ==========================================================


-- ==========================================================
-- 01. Conferir tipos de membro
-- ==========================================================

SELECT *
FROM tb_tipo_membro
ORDER BY id_tipo;


-- ==========================================================
-- 02. Conferir membros
-- ==========================================================

SELECT
    id_membro,
    nome,
    data_inicio,
    ativo,
    observacao
FROM tb_membro
ORDER BY id_membro;


-- ==========================================================
-- 03. Conferir relação entre membros e tipos
-- ==========================================================

SELECT
    m.id_membro,
    m.nome,
    tm.id_tipo,
    tm.descricao AS tipo_membro
FROM tb_membro m
INNER JOIN tb_membro_tipo mt
    ON m.id_membro = mt.id_membro
INNER JOIN tb_tipo_membro tm
    ON mt.id_tipo = tm.id_tipo
ORDER BY m.id_membro;


-- ==========================================================
-- 04. Conferir locais
-- ==========================================================

SELECT *
FROM tb_local
ORDER BY id_local;


-- ==========================================================
-- 05. Conferir semanas
-- ==========================================================

SELECT
    id_semana,
    data_inicio,
    data_fim
FROM tb_semana
ORDER BY data_inicio;


-- ==========================================================
-- 06. Conferir status de participação
-- ==========================================================

SELECT *
FROM tb_status_participacao
ORDER BY id_status_participacao;


-- ==========================================================
-- 07. Conferir status financeiro
-- ==========================================================

SELECT *
FROM tb_status_financeiro
ORDER BY id_status_financeiro;


-- ==========================================================
-- 08. Conferir escalas
-- ==========================================================

SELECT
    id_escala,
    id_semana,
    id_local,
    horario_inicio,
    horario_fim
FROM tb_escala
ORDER BY id_escala;


-- ==========================================================
-- 09. Validar relacionamento entre escala, semana e local
-- ==========================================================

SELECT
    e.id_escala,
    s.data_inicio,
    s.data_fim,
    l.nome_local,
    e.horario_inicio,
    e.horario_fim
FROM tb_escala e
INNER JOIN tb_semana s
    ON e.id_semana = s.id_semana
INNER JOIN tb_local l
    ON e.id_local = l.id_local
ORDER BY e.id_escala;


-- ==========================================================
-- 10. Identificar membros sem tipo cadastrado
-- ==========================================================

SELECT
    m.id_membro,
    m.nome
FROM tb_membro m
LEFT JOIN tb_membro_tipo mt
    ON m.id_membro = mt.id_membro
WHERE mt.id_membro IS NULL;


-- ==========================================================
-- 11. Identificar escalas sem semana relacionada
-- ==========================================================

SELECT
    e.id_escala,
    e.id_semana
FROM tb_escala e
LEFT JOIN tb_semana s
    ON e.id_semana = s.id_semana
WHERE s.id_semana IS NULL;


-- ==========================================================
-- 12. Identificar escalas sem local relacionado
-- ==========================================================

SELECT
    e.id_escala,
    e.id_local
FROM tb_escala e
LEFT JOIN tb_local l
    ON e.id_local = l.id_local
WHERE l.id_local IS NULL;


-- ==========================================================
-- 13. Identificar semanas com datas inválidas
-- ==========================================================

SELECT
    id_semana,
    data_inicio,
    data_fim
FROM tb_semana
WHERE data_inicio > data_fim;


-- ==========================================================
-- 14. Identificar escalas com horário inválido
-- ==========================================================

SELECT
    id_escala,
    horario_inicio,
    horario_fim
FROM tb_escala
WHERE horario_inicio >= horario_fim;


-- ==========================================================
-- 15. Visualização geral das escalas
-- ==========================================================

SELECT
    e.id_escala,
    s.data_inicio AS inicio_semana,
    s.data_fim AS fim_semana,
    l.nome_local AS local,
    e.horario_inicio,
    e.horario_fim
FROM tb_escala e
INNER JOIN tb_semana s
    ON e.id_semana = s.id_semana
INNER JOIN tb_local l
    ON e.id_local = l.id_local
ORDER BY
    s.data_inicio,
    e.horario_inicio;