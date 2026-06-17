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

## Separação dos Registros de Horário

Os horários de chegada e saída foram armazenados em uma tabela específica (`tb_registro_horario`).

Essa decisão permite registrar múltiplos horários para diferentes períodos sem sobrecarregar o cadastro dos membros.

Benefícios:

* Histórico detalhado.
* Melhor organização dos dados operacionais.
* Facilidade para auditoria e consultas.

---

## Controle Financeiro Independente

As informações financeiras foram armazenadas em uma tabela própria (`tb_financeiro`), separada dos registros de participação.

Essa abordagem permite controlar pagamentos e status financeiros de forma independente.

Benefícios:

* Maior flexibilidade para futuras regras financeiras.
* Histórico completo de pagamentos.
* Melhor organização das informações.

---

## Cadastro de Locais e Escalas

Os locais foram modelados em uma tabela independente (`tb_local`) e associados às escalas por meio da tabela `tb_escala`.

Benefícios:

* Evita duplicação de nomes de locais.
* Facilita alterações cadastrais.
* Permite reutilizar um mesmo local em diferentes escalas.

---

## Normalização dos Dados

Durante o desenvolvimento do modelo foi aplicada a normalização dos dados para reduzir redundâncias e garantir maior consistência das informações.

As tabelas foram estruturadas de forma a armazenar cada informação apenas uma vez, utilizando relacionamentos para conectar os dados quando necessário.

Benefícios:

* Menor duplicação de informações.
* Maior integridade dos dados.
* Facilidade de manutenção.
* Melhor desempenho em consultas estruturadas.
