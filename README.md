# Sistema de Controle de Revezamento e Gestão Operacional

Sistema desenvolvido para controle e organização das atividades de revezamento, permitindo o gerenciamento de membros, escalas, participações, horários, presença e informações financeiras.

O projeto também tem como objetivo servir como estudo prático de **modelagem de banco de dados relacional, SQL, Git e documentação de sistemas**.

---

## Objetivo

O projeto foi desenvolvido a partir da necessidade de organizar informações que anteriormente eram controladas por meio de planilhas e grupos de WhatsApp.

A proposta é centralizar essas informações em um banco de dados relacional, permitindo maior organização, consistência e facilidade de consulta dos dados.

O sistema contempla:

* Cadastro e controle de membros;
* Classificação dos membros por tipo;
* Organização das semanas de revezamento;
* Cadastro de locais;
* Criação de escalas;
* Controle das participações;
* Registro de horários de entrada e saída;
* Controle de presença;
* Controle financeiro;
* Registro de status das participações e pagamentos.

---

## Contexto

O projeto surgiu a partir da necessidade de organizar o controle de participação em revezamentos realizados semanalmente.

Inicialmente, as informações eram distribuídas entre planilhas eletrônicas e mensagens em grupos de WhatsApp. Essa abordagem dificultava o controle histórico, a validação dos dados e a realização de consultas.

A solução proposta consiste na criação de um banco de dados relacional capaz de estruturar essas informações e estabelecer relacionamentos entre os diferentes elementos do processo.

---

## Tecnologias utilizadas

* **PostgreSQL** — banco de dados relacional;
* **SQL** — criação e manipulação dos dados;
* **DBDiagram** — modelagem do banco de dados;
* **Visual Studio Code** — desenvolvimento e organização dos arquivos;
* **Git** — controle de versão;
* **GitHub** — hospedagem do projeto e documentação;
* **Excel** — utilizado inicialmente para organização e levantamento dos dados.

---

## Modelo do Banco de Dados

O banco de dados foi modelado utilizando o conceito de modelo relacional, com tabelas independentes e relacionamentos estabelecidos por meio de chaves primárias e estrangeiras.

### Modelo lógico

O modelo contempla tabelas para membros, tipos de membros, semanas, escalas, participações, registros de horários, controle financeiro, locais e tabelas de status.

---

## Principais tabelas

| Tabela                   | Descrição                             |
| ------------------------ | ------------------------------------- |
| `tb_membro`              | Cadastro dos membros                  |
| `tb_tipo_membro`         | Tipos ou categorias de membros        |
| `tb_membro_tipo`         | Relacionamento entre membros e tipos  |
| `tb_semana`              | Semanas do revezamento                |
| `tb_local`               | Locais utilizados nas escalas         |
| `tb_escala`              | Escalas cadastradas                   |
| `tb_participacao`        | Participação dos membros nas escalas  |
| `tb_registro_horario`    | Registro de entrada, saída e horários |
| `tb_financeiro`          | Controle financeiro dos membros       |
| `tb_status_participacao` | Status das participações              |
| `tb_status_financeiro`   | Status dos pagamentos                 |

---

## Estrutura do projeto

```text
controle-revezamento/
│
├── docs/
│   ├── 01-visao-geral.md
│   ├── 02-requisitos.md
│   ├── 03-regras-negocio.md
│   ├── 04-modelagem-conceitual.md
│   ├── 05-modelagem-logica.md
│   ├── 06-dicionario-de-dados.md
│   └── 07-decisoes-de-modelagem.md
│
├── sql/
│   ├── 01-create-database.sql
│   ├── 02-create-schema.sql
│   ├── 03-create-tables.sql
│   └── ...
│
├── docs/
│   └── modelagem/
│       └── diagramas/
│           └── modelo-logico.png
│
├── README.md
└── .gitignore
```

> A estrutura de pastas pode ser ajustada conforme os scripts SQL e documentos forem adicionados ao projeto.

---

## Documentação

A documentação do projeto está organizada na pasta `docs/`.

Os documentos apresentam, respectivamente:

* Visão geral e objetivo do sistema;
* Requisitos funcionais;
* Regras de negócio;
* Dicionário de dados;
* Decisões relacionadas à modelagem;
* Modelo do banco de dados;
* Próximos passos da implementação.

---

## Implementação do Banco de Dados

A implementação física está sendo realizada utilizando **PostgreSQL**.

O processo de implementação segue uma ordem definida para respeitar as dependências entre as tabelas:

1. Criação do banco de dados;
2. Criação do schema `academico`;
3. Criação das tabelas;
4. Definição das chaves primárias;
5. Definição das chaves estrangeiras;
6. Criação das restrições necessárias;
7. Inserção dos dados iniciais;
8. Testes e validações.

O schema utilizado no projeto é:

```sql
academico
```

---

## Status do Projeto

### Concluído

* [x] Definição do objetivo do sistema;
* [x] Levantamento dos requisitos;
* [x] Definição das regras de negócio;
* [x] Dicionário de dados;
* [x] Modelagem do banco de dados;
* [x] Modelo lógico;
* [x] Criação do banco de dados;
* [x] Criação do schema `academico`.

### Em andamento

* [ ] Criação das tabelas;
* [ ] Criação das chaves estrangeiras;
* [ ] Criação das restrições;
* [ ] Inserção dos dados iniciais;
* [ ] Testes do banco de dados.

### Próximas etapas

* [ ] Criar consultas SQL;
* [ ] Criar relatórios e consultas de acompanhamento;
* [ ] Validar o banco com dados reais ou simulados;
* [ ] Documentar os testes realizados;
* [ ] Avaliar possíveis melhorias no modelo.

---

## Objetivo de Aprendizado

Além de solucionar uma necessidade prática de organização, o projeto tem como finalidade desenvolver conhecimentos em:

* Modelagem de bancos de dados relacionais;
* Normalização;
* SQL;
* PostgreSQL;
* Chaves primárias e estrangeiras;
* Restrições e integridade dos dados;
* Git e GitHub;
* Organização de projetos;
* Documentação técnica.

---

## Autoria

Projeto desenvolvido por **Maitê Lacerda** como projeto acadêmico e prático para estudo de banco de dados, SQL e desenvolvimento de sistemas.
