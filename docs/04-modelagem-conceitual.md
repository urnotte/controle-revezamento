# Modelagem Conceitual

## Objetivo

A modelagem conceitual tem como objetivo representar, de forma abstrata, as principais entidades do Sistema de Controle de Revezamento e seus relacionamentos.

Nesta etapa são descritos apenas os conceitos do negócio, sem considerar detalhes de implementação, como tipos de dados ou comandos SQL.

---

# Entidades do Sistema

## Membro

Representa as pessoas participantes das atividades de revezamento.

Cada membro possui informações cadastrais e poderá exercer um ou mais tipos de atuação durante sua permanência no sistema.

---

## Tipo de Membro

Representa as funções que um membro pode desempenhar.

Exemplos:

- Revezante;
- Financeiro;
- Administrador.

Um mesmo tipo poderá ser associado a diversos membros.

---

## Semana

Representa o período utilizado como referência para organização das atividades.

Cada semana possui uma data inicial e uma data final, servindo como base para escalas, participações e controle financeiro.

---

## Local

Representa o local onde as atividades serão realizadas.

Um mesmo local poderá ser utilizado em diferentes escalas ao longo do tempo.

---

## Escala

Representa a programação de trabalho de uma determinada semana em um local específico.

Cada escala define o período de funcionamento das atividades e poderá possuir diversos membros participantes.

---

## Participação

Representa o vínculo entre um membro e uma escala.

Cada participação possui um status e poderá conter observações relacionadas à atuação do membro.

---

## Registro de Horário

Representa os horários efetivamente realizados durante uma participação.

Uma mesma participação poderá possuir um ou mais registros de horário, permitindo registrar atuações em diferentes dias e períodos.

---

## Status de Participação

Representa a situação da participação do membro.

Exemplos:

- Presente;
- Ausente;
- Justificado.

---

## Financeiro

Representa o controle financeiro semanal dos membros.

Permite registrar pagamentos, valores, datas e observações referentes à semana correspondente.

---

## Status Financeiro

Representa a situação financeira do registro.

Exemplos:

- Em aberto;
- Pendente;
- Pago.

---

# Relacionamentos

Os principais relacionamentos identificados no sistema são:

- Um membro pode possuir diversos tipos de membro.
- Um tipo de membro pode ser atribuído a diversos membros.
- Uma semana pode possuir diversas escalas.
- Um local pode ser utilizado em diversas escalas.
- Uma escala pode possuir diversas participações.
- Um membro pode participar de diversas escalas ao longo do tempo.
- Uma participação pode possuir diversos registros de horário.
- Um status de participação pode ser utilizado por diversas participações.
- Um membro pode possuir diversos registros financeiros.
- Uma semana pode possuir diversos registros financeiros.
- Um status financeiro pode ser utilizado por diversos registros financeiros.

---

# Visão Geral da Modelagem

O modelo conceitual foi elaborado com foco na organização das informações, eliminação de redundâncias e preservação do histórico das atividades realizadas.

A estrutura proposta permite registrar membros, escalas, participações, horários e informações financeiras de forma consistente, servindo como base para a construção do modelo lógico e da implementação do banco de dados.