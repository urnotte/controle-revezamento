# Dicionário de Dados

## Objetivo

Este documento descreve a estrutura lógica do banco de dados do Sistema de Controle de Revezamento, detalhando cada tabela, seus atributos e respectivas finalidades.

---

# tb_membro

## Descrição

Armazena os dados cadastrais dos membros participantes do sistema.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_membro | INTEGER | PK | Identificador único do membro. |
| nome | VARCHAR | NOT NULL | Nome do membro. |
| data_inicio | DATE | NOT NULL | Data de ingresso do membro no sistema. |
| observacao | TEXT | Opcional | Informações complementares sobre o membro. |
| ativo | BOOLEAN | NOT NULL | Indica se o membro está ativo (`true`) ou inativo (`false`). |


# tb_tipo_membro

## Descrição

Armazena os tipos de atuação que podem ser atribuídos aos membros do sistema.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_tipo | INTEGER | PK | Identificador único do tipo de membro. |
| descricao | VARCHAR | NOT NULL, UNIQUE | Descrição do tipo de membro. |


# tb_membro_tipo

## Descrição

Tabela associativa responsável por implementar o relacionamento muitos-para-muitos entre membros e tipos de membro.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_membro | INTEGER | PK, FK, NOT NULL | Identificador do membro. |
| id_tipo | INTEGER | PK, FK, NOT NULL | Identificador do tipo de membro. |


# tb_semana

## Descrição

Armazena os períodos semanais utilizados como referência para organização das escalas, participações e registros financeiros.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_semana | INTEGER | PK | Identificador único da semana. |
| data_inicio | DATE | NOT NULL, UNIQUE | Data de início da semana. |
| data_fim | DATE | NOT NULL | Data de término da semana. |


# tb_escala

## Descrição

Armazena as escalas de atuação cadastradas para cada semana e local.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_escala | INTEGER | PK | Identificador único da escala. |
| id_semana | INTEGER | FK, NOT NULL | Semana de referência da escala. |
| id_local | INTEGER | FK, NOT NULL | Local onde a escala será realizada. |
| horario_inicio | TIME | NOT NULL | Horário de início da escala. |
| horario_fim | TIME | NOT NULL | Horário de término da escala. |


# tb_participacao

## Descrição

Armazena a participação dos membros nas escalas cadastradas.

Cada registro relaciona um membro, uma escala e um status de participação, permitindo registrar observações quando necessário.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_participacao | INTEGER | PK | Identificador único da participação. |
| id_membro | INTEGER | FK, NOT NULL | Membro participante. |
| id_escala | INTEGER | FK, NOT NULL | Escala em que ocorreu a participação. |
| id_status_participacao | INTEGER | FK, NOT NULL | Status da participação. |
| observacao | TEXT | Opcional | Observações referentes à participação. |


# tb_status_participacao

## Descrição

Armazena os status utilizados para classificar as participações dos membros nas escalas.

Exemplos de valores: **Presente**, **Ausente** e **Justificado**.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_status_participacao | INTEGER | PK | Identificador único do status de participação. |
| descricao | VARCHAR | NOT NULL, UNIQUE | Descrição do status de participação. |


# tb_registro_horario

## Descrição

Armazena os registros de horários realizados durante uma participação.

Uma participação poderá possuir um ou mais registros de horário, permitindo registrar diferentes períodos de atuação.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_registro | INTEGER | PK | Identificador único do registro de horário. |
| id_participacao | INTEGER | FK, NOT NULL | Participação à qual o registro pertence. |
| data_participacao | DATE | NOT NULL | Data em que ocorreu a participação. |
| hora_chegada | TIME | NOT NULL | Horário de entrada do membro. |
| hora_saida | TIME | NOT NULL | Horário de saída do membro. |
| verificacao | VARCHAR | NOT NULL | Situação da verificação do registro de horário. |


# tb_financeiro

## Descrição

Armazena os registros financeiros dos membros por semana de referência.

A tabela permite registrar pagamentos integrais, pagamentos parciais e adiantamentos para semanas futuras.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_financeiro | INTEGER | PK | Identificador único do registro financeiro. |
| id_membro | INTEGER | FK, NOT NULL | Membro ao qual o registro financeiro pertence. |
| id_semana | INTEGER | FK, NOT NULL | Semana de referência do pagamento. |
| valor | DECIMAL(10,2) | Opcional | Valor registrado no pagamento. |
| data_pagamento | DATE | Opcional | Data em que o pagamento foi realizado. |
| id_status_financeiro | INTEGER | FK, NOT NULL | Status do pagamento. |
| observacao | TEXT | Opcional | Observações relacionadas ao registro financeiro. |


# tb_status_financeiro

## Descrição

Armazena os status utilizados para classificar a situação financeira dos registros.

Exemplos de valores: **Em aberto**, **Pendente** e **Pago**.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_status_financeiro | INTEGER | PK | Identificador único do status financeiro. |
| descricao | VARCHAR | NOT NULL, UNIQUE | Descrição do status financeiro. |


# tb_local

## Descrição

Armazena os locais onde as atividades de revezamento são realizadas.

| Campo | Tipo | Restrições | Descrição |
|--------|------|------------|-----------|
| id_local | INTEGER | PK | Identificador único do local. |
| nome_local | VARCHAR | NOT NULL | Nome do local de atuação. |
| observacao | TEXT | Opcional | Informações complementares sobre o local. |