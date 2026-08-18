SET search_path TO academico;

-- ==========================================================
-- 01. Listar todos os membros ativos
-- ==========================================================

SELECT
    id_membro,
    nome,
    data_inicio,
    ativo
FROM tb_membro
WHERE ativo = TRUE
ORDER BY nome;


-- ==========================================================
-- 02. Listar todos os membros e seus respectivos tipos
-- ==========================================================

SELECT
    m.id_membro,
    m.nome,
    tm.descricao AS tipo_membro,
    m.ativo
FROM tb_membro AS m
INNER JOIN tb_membro_tipo AS mt
    ON mt.id_membro = m.id_membro
INNER JOIN tb_tipo_membro AS tm
    ON tm.id_tipo = mt.id_tipo
ORDER BY m.nome;


-- ==========================================================
-- 03. Listar somente os membros ativos e seus tipos
-- ==========================================================

SELECT
    m.id_membro,
    m.nome,
    tm.descricao AS tipo_membro
FROM tb_membro AS m
INNER JOIN tb_membro_tipo AS mt
    ON mt.id_membro = m.id_membro
INNER JOIN tb_tipo_membro AS tm
    ON tm.id_tipo = mt.id_tipo
WHERE m.ativo = TRUE
ORDER BY m.nome;


-- ==========================================================
-- 04. Listar as semanas cadastradas
-- ==========================================================

SELECT
    id_semana,
    data_inicio,
    data_fim
FROM tb_semana
ORDER BY data_inicio;


-- ==========================================================
-- 05. Listar as escalas com semana, local e horário
-- ==========================================================

SELECT
    e.id_escala,
    s.id_semana,
    s.data_inicio,
    s.data_fim,
    l.nome_local,
    e.horario_inicio,
    e.horario_fim
FROM tb_escala AS e
INNER JOIN tb_semana AS s
    ON s.id_semana = e.id_semana
INNER JOIN tb_local AS l
    ON l.id_local = e.id_local
ORDER BY s.data_inicio, e.horario_inicio;


-- ==========================================================
-- 06. Listar os locais cadastrados
-- ==========================================================

SELECT
    id_local,
    nome_local,
    observacao
FROM tb_local
ORDER BY nome_local;


-- ==========================================================
-- 07. Listar as participações registradas
-- ==========================================================

SELECT
    p.id_participacao,
    m.nome,
    e.id_escala,
    s.data_inicio,
    s.data_fim,
    l.nome_local,
    sp.descricao AS status_participacao,
    p.observacao
FROM tb_participacao AS p
INNER JOIN tb_membro AS m
    ON m.id_membro = p.id_membro
INNER JOIN tb_escala AS e
    ON e.id_escala = p.id_escala
INNER JOIN tb_semana AS s
    ON s.id_semana = e.id_semana
INNER JOIN tb_local AS l
    ON l.id_local = e.id_local
INNER JOIN tb_status_participacao AS sp
    ON sp.id_status_participacao = p.id_status_participacao
ORDER BY s.data_inicio, m.nome;


-- ==========================================================
-- 08. Listar os registros de horário
-- ==========================================================

SELECT
    rh.id_registro,
    m.nome,
    rh.data_participacao,
    rh.hora_chegada,
    rh.hora_saida,
    rh.verificacao
FROM tb_registro_horario AS rh
INNER JOIN tb_participacao AS p
    ON p.id_participacao = rh.id_participacao
INNER JOIN tb_membro AS m
    ON m.id_membro = p.id_membro
ORDER BY rh.data_participacao, rh.hora_chegada;


-- ==========================================================
-- 09. Listar informações financeiras dos membros
-- ==========================================================

SELECT
    f.id_financeiro,
    m.nome,
    s.data_inicio,
    s.data_fim,
    f.valor,
    f.data_pagamento,
    sf.descricao AS status_financeiro,
    f.observacao
FROM tb_financeiro AS f
INNER JOIN tb_membro AS m
    ON m.id_membro = f.id_membro
INNER JOIN tb_semana AS s
    ON s.id_semana = f.id_semana
INNER JOIN tb_status_financeiro AS sf
    ON sf.id_status_financeiro = f.id_status_financeiro
ORDER BY s.data_inicio, m.nome;


-- ==========================================================
-- 10. Consultar a quantidade de membros por tipo
-- ==========================================================

SELECT
    tm.descricao AS tipo_membro,
    COUNT(mt.id_membro) AS quantidade_membros
FROM tb_tipo_membro AS tm
LEFT JOIN tb_membro_tipo AS mt
    ON mt.id_tipo = tm.id_tipo
GROUP BY tm.id_tipo, tm.descricao
ORDER BY tm.descricao;


-- ==========================================================
-- 11. Consultar a quantidade de membros ativos por tipo
-- ==========================================================

SELECT
    tm.descricao AS tipo_membro,
    COUNT(m.id_membro) AS quantidade_membros_ativos
FROM tb_tipo_membro AS tm
LEFT JOIN tb_membro_tipo AS mt
    ON mt.id_tipo = tm.id_tipo
LEFT JOIN tb_membro AS m
    ON m.id_membro = mt.id_membro
    AND m.ativo = TRUE
GROUP BY tm.id_tipo, tm.descricao
ORDER BY tm.descricao;


-- ==========================================================
-- 12. Consultar a quantidade de participações por status
-- ==========================================================

SELECT
    sp.descricao AS status_participacao,
    COUNT(p.id_participacao) AS quantidade
FROM tb_status_participacao AS sp
LEFT JOIN tb_participacao AS p
    ON p.id_status_participacao = sp.id_status_participacao
GROUP BY sp.id_status_participacao, sp.descricao
ORDER BY sp.descricao;


-- ==========================================================
-- 13. Consultar a situação financeira dos registros
-- ==========================================================

SELECT
    sf.descricao AS status_financeiro,
    COUNT(f.id_financeiro) AS quantidade_registros,
    COALESCE(SUM(f.valor), 0) AS valor_total
FROM tb_status_financeiro AS sf
LEFT JOIN tb_financeiro AS f
    ON f.id_status_financeiro = sf.id_status_financeiro
GROUP BY sf.id_status_financeiro, sf.descricao
ORDER BY sf.descricao;


-- ==========================================================
-- 14. Consultar a carga horária das escalas cadastradas
-- ==========================================================

SELECT
    e.id_escala,
    l.nome_local,
    e.horario_inicio,
    e.horario_fim,
    e.horario_fim - e.horario_inicio AS duracao
FROM tb_escala AS e
INNER JOIN tb_local AS l
    ON l.id_local = e.id_local
ORDER BY e.id_escala;