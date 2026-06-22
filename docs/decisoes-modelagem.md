# Decisões de Modelagem

## Objetivo

Este documento apresenta as principais decisões adotadas durante a modelagem do banco de dados do Sistema de Controle de Revezamento.

O objetivo dessas decisões foi garantir organização, reduzir redundâncias e facilitar futuras manutenções e consultas.

---

## Relacionamento entre Membros e Funções

Foi identificado que um membro pode exercer mais de uma função simultaneamente e que uma mesma função pode ser atribuída a diversos membros.

Para atender esse requisito foi criado um relacionamento muitos-para-muitos entre as tabelas `tb_membro` e `tb_tipo_membro`, utilizando a tabela intermediária `tb_membro_tipo`.

Benefícios:

* Flexibilidade para atribuir múltiplas funções.
* Evita duplicação de registros de membros.
* Facilita futuras expansões do sistema.

---

## Centralização dos Períodos em Semanas

As atividades do sistema são organizadas por períodos semanais.

Por esse motivo foi criada a tabela `tb_semana`, utilizada como referência para participações, registros de horário, escalas e informações financeiras.

Benefícios:

* Padronização dos períodos.
* Facilidade para consultas históricas.
* Redução da repetição de datas em múltiplas tabelas.

---

## Controle de Participação

O registro de participação foi separado da tabela de membros para permitir o armazenamento do histórico de presença ao longo do tempo.

Cada participação está vinculada a um membro e a uma semana específica.

Benefícios:

* Histórico completo de participações.
* Possibilidade de registrar diferentes situações para cada período.

---

## Utilização de Tabelas de Status

Os status de participação e financeiro foram armazenados em tabelas próprias (`tb_status_participacao` e `tb_status_financeiro`).

Essa abordagem segue os princípios de normalização e evita a repetição de textos em diversas linhas.

Benefícios:

* Padronização das informações.
* Facilidade para inclusão de novos status.
* Menor risco de inconsistências.

---

## Restrições de Integridade

Foram aplicadas restrições de integridade diretamente na estrutura das tabelas para garantir maior consistência dos dados armazenados.

Principais regras adotadas:

* Utilização de `NOT NULL` em atributos obrigatórios.
* Utilização de chaves primárias para identificação única dos registros.
* Utilização de chaves estrangeiras para garantir a integridade referencial entre as tabelas.
* Utilização de restrições `UNIQUE` em tabelas de domínio para evitar cadastros duplicados de tipos e status.

Benefícios:

* Redução de registros incompletos.
* Maior confiabilidade das informações.
* Prevenção de inconsistências entre tabelas.
* Melhor qualidade dos dados para consultas e relatórios.

---

## Normalização dos Dados

Durante o desenvolvimento do modelo foi aplicada a normalização dos dados para reduzir redundâncias e garantir maior consistência das informações.

As tabelas foram estruturadas de forma a armazenar cada informação apenas uma vez, utilizando relacionamentos para conectar os dados quando necessário.

Benefícios:

* Menor duplicação de informações.
* Maior integridade dos dados.
* Facilidade de manutenção.
* Melhor desempenho em consultas estruturadas.
