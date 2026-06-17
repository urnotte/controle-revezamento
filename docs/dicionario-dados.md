# Dicionário de Dados

Este documento descreve a finalidade de cada tabela e campo do banco de dados utilizado no Sistema de Controle de Revezamento.


## tb_membro

Armazena os membros participantes das atividades.

| Campo       | Tipo    | Descrição                     |
| ----------- | ------- | ----------------------------- |
| id_membro   | INTEGER | Identificador único do membro |
| nome        | VARCHAR | Nome do membro                |
| data_inicio | DATE    | Data de início das atividades |
| observacao  | TEXT    | Informações complementares    |
| ativo       | BOOLEAN | Indica se o membro está ativo |

---

## tb_tipo_membro

Armazena os tipos ou funções que um membro pode exercer.

| Campo     | Tipo    | Descrição                   |
| --------- | ------- | --------------------------- |
| id_tipo   | INTEGER | Identificador do tipo       |
| descricao | VARCHAR | Nome da função desempenhada |

Exemplos:

* Revezante
* Financeiro
* Administrador

---

## tb_membro_tipo

Tabela responsável pelo relacionamento entre membros e tipos de membro.

| Campo     | Tipo    | Descrição                    |
| --------- | ------- | ---------------------------- |
| id_membro | INTEGER | Referência ao membro         |
| id_tipo   | INTEGER | Referência ao tipo de membro |

---

## tb_semana

Armazena os períodos semanais utilizados pelo sistema.

| Campo       | Tipo    | Descrição               |
| ----------- | ------- | ----------------------- |
| id_semana   | INTEGER | Identificador da semana |
| data_inicio | DATE    | Data inicial da semana  |
| data_fim    | DATE    | Data final da semana    |

---

## tb_participacao

Registra a participação dos membros nas atividades.

| Campo                  | Tipo    | Descrição                 |
| ---------------------- | ------- | ------------------------- |
| id_participacao        | INTEGER | Identificador do registro |
| id_membro              | INTEGER | Membro participante       |
| id_semana              | INTEGER | Semana de referência      |
| id_status_participacao | INTEGER | Status da participação    |
| observacao             | TEXT    | Observações adicionais    |
