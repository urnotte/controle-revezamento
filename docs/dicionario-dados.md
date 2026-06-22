# Dicionário de Dados

Este documento descreve a finalidade de cada tabela e campo do banco de dados utilizado no Sistema de Controle de Revezamento.

---

## tb_membro

Armazena os membros participantes das atividades.

| Campo       | Tipo         | Obrigatório | Descrição                     |
| ----------- | ------------ | ----------- | ----------------------------- |
| id_membro   | INTEGER      | Sim         | Identificador único do membro |
| nome        | VARCHAR(100) | Sim         | Nome do membro                |
| data_inicio | DATE         | Sim         | Data de início das atividades |
| observacao  | TEXT         | Não         | Informações complementares    |
| ativo       | BOOLEAN      | Sim         | Indica se o membro está ativo |

---

## tb_tipo_membro

Armazena os tipos ou funções que um membro pode exercer.

| Campo     | Tipo         | Obrigatório | Descrição                   |
| --------- | ------------ | ----------- | --------------------------- |
| id_tipo   | INTEGER      | Sim         | Identificador do tipo       |
| descricao | VARCHAR(100) | Sim         | Nome da função desempenhada |

Exemplos:

* Revezante
* Financeiro
* Administrador

---

## tb_membro_tipo

Tabela responsável pelo relacionamento entre membros e tipos de membro.

| Campo     | Tipo    | Obrigatório | Descrição                    |
| --------- | ------- | ----------- | ---------------------------- |
| id_membro | INTEGER | Sim         | Referência ao membro         |
| id_tipo   | INTEGER | Sim         | Referência ao tipo de membro |

Observação: um membro pode possuir uma ou mais funções simultaneamente.

---

## tb_semana

Armazena os períodos semanais utilizados pelo sistema.

| Campo       | Tipo    | Obrigatório | Descrição               |
| ----------- | ------- | ----------- | ----------------------- |
| id_semana   | INTEGER | Sim         | Identificador da semana |
| data_inicio | DATE    | Sim         | Data inicial da semana  |
| data_fim    | DATE    | Sim         | Data final da semana    |

---

## tb_status_participacao

Armazena os possíveis status relacionados à participação dos membros.

| Campo                  | Tipo         | Obrigatório | Descrição               |
| ---------------------- | ------------ | ----------- | ----------------------- |
| id_status_participacao | INTEGER      | Sim         | Identificador do status |
| descricao              | VARCHAR(100) | Sim         | Descrição do status     |

Exemplos:

* Participou
* Faltou
* Justificado

---

## tb_participacao

Registra a participação dos membros nas atividades.

| Campo                  | Tipo    | Obrigatório | Descrição                 |
| ---------------------- | ------- | ----------- | ------------------------- |
| id_participacao        | INTEGER | Sim         | Identificador do registro |
| id_membro              | INTEGER | Sim         | Membro participante       |
| id_semana              | INTEGER | Sim         | Semana de referência      |
| id_status_participacao | INTEGER | Sim         | Status da participação    |
| observacao             | TEXT    | Não         | Observações adicionais    |

Observação: um mesmo membro pode possuir múltiplos registros de participação dentro da mesma semana, conforme a necessidade operacional do sistema.
