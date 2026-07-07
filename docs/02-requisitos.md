# Requisitos do Sistema

## Objetivo

Este documento apresenta os requisitos funcionais e não funcionais do Sistema de Controle de Revezamento, servindo como base para a modelagem do banco de dados e para futuras implementações.

---

# Requisitos Funcionais

Os requisitos funcionais representam as funcionalidades que o sistema deve oferecer.

## RF01 – Cadastro de Membros

O sistema deve permitir o cadastro de membros participantes das atividades.

Cada membro deve possuir, no mínimo:

- Nome
- Data Início
- Situação (ativo ou inativo)

---

## RF02 – Cadastro de Tipos de Membro

O sistema deve permitir o cadastro dos tipos de membro existentes.

Exemplos:

- Revezante
- Financeiro
- Administrador

---

## RF03 – Associação entre Membros e Tipos

Um membro poderá possuir um ou mais tipos de atuação.

Um mesmo tipo poderá estar associado a diversos membros.

---

## RF04 – Cadastro de Semanas

O sistema deve permitir o cadastro das semanas utilizadas nas escalas de revezamento.

Cada semana deverá possuir sua identificação e período correspondente.

---

## RF05 – Cadastro de Locais

O sistema deve permitir o cadastro dos locais onde ocorrerão as atividades.

---

## RF06 – Cadastro de Escalas

O sistema deve permitir registrar as escalas de atuação dos membros.

Cada escala deverá relacionar:

- Membro
- Semana
- Local

---

## RF07 – Registro de Participações

O sistema deve registrar a participação dos membros em cada escala.

Cada participação deverá possuir um status.

---

## RF08 – Registro de Horários

O sistema deve permitir registrar os horários de entrada e saída referentes às participações.

---

## RF09 – Controle Financeiro

O sistema deve permitir registrar informações financeiras relacionadas às participações, quando aplicável.

---

## RF10 – Consulta de Histórico

O sistema deve permitir consultar o histórico completo de participações de cada membro.

---

# Requisitos Não Funcionais

Os requisitos não funcionais definem características de qualidade do sistema.

## RNF01 – Integridade dos Dados

O banco de dados deve garantir integridade referencial entre todas as tabelas.

---

## RNF02 – Eliminação de Redundâncias

A estrutura deverá ser normalizada para reduzir duplicidade de informações.

---

## RNF03 – Manutenibilidade

A modelagem deverá facilitar futuras alterações e expansões do sistema.

---

## RNF04 – Desempenho

O banco de dados deverá permitir consultas eficientes para registros históricos e operacionais.

---

## RNF05 – Escalabilidade

A estrutura deverá suportar o crescimento do número de membros, participações e escalas sem necessidade de remodelagem significativa.

---

## RNF06 – Documentação

Toda a modelagem deverá possuir documentação técnica para facilitar entendimento e manutenção do projeto.