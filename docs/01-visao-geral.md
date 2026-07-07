# Visão Geral do Sistema

## 1. Nome do Projeto

**Sistema de Controle de Revezamento e Gestão Operacional**

---

## 2. Contexto

O Sistema de Controle de Revezamento surgiu a partir da necessidade de organizar e estruturar informações que inicialmente eram gerenciadas por meio de planilhas.

Com o crescimento da quantidade de dados e da complexidade das regras de revezamento, tornou-se necessário evoluir para um modelo mais estruturado, utilizando um banco de dados relacional.

---

## 3. Problema Identificado

O modelo atual, baseado em planilhas, apresenta limitações como:

- Dificuldade de controle do histórico de participações;
- Alto risco de inconsistência e duplicidade de dados;
- Falta de padronização das informações;
- Dificuldade para realização de consultas e análises mais avançadas;
- Baixa escalabilidade para o crescimento do volume de dados.

---

## 4. Solução Proposta

A solução proposta consiste no desenvolvimento de um sistema baseado em banco de dados relacional, com foco em:

- Organização estruturada dos dados;
- Redução de redundâncias;
- Facilidade de consultas por meio de SQL;
- Maior confiabilidade das informações;
- Base sólida para futuras evoluções do sistema.

---

## 5. Objetivo do Sistema

O sistema tem como objetivo principal **gerenciar o controle de revezamento de membros em atividades operacionais**, permitindo:

- Cadastro de membros;
- Registro de participações em escalas;
- Controle de funções e tipos de membros;
- Organização dos locais de atuação;
- Registro de informações financeiras (quando aplicável);
- Manutenção do histórico completo das movimentações.

---

## 6. Escopo do Projeto

### Incluído no escopo

- Modelagem de banco de dados relacional;
- Estruturação das entidades e seus relacionamentos;
- Definição das regras de negócio;
- Criação de scripts SQL (`CREATE TABLE` e `INSERT`);
- Documentação técnica do projeto.

### Fora do escopo (nesta fase)

- Interface gráfica (Front-end);
- Sistema Web ou Mobile;
- Autenticação de usuários;
- Integração com APIs externas.

---

## 7. Público-Alvo

O sistema é destinado ao uso interno de organizações que necessitam gerenciar escalas e revezamentos, como:

- Equipes operacionais;
- Grupos administrativos;
- Organizações que realizam controle interno de escalas.

---

## 8. Resultado Esperado

Ao final do projeto, espera-se obter:

- Um modelo de banco de dados consistente e normalizado;
- Regras de negócio claras e documentadas;
- Scripts SQL funcionais;
- Uma base sólida para futuras evoluções do sistema.

---

## 9. Evolução do Projeto

O desenvolvimento do projeto está organizado em etapas evolutivas:

1. Controle manual por meio de planilhas;
2. Modelagem conceitual, lógica e física do banco de dados;
3. Implementação do banco de dados em SQL;
4. Evolução futura para um sistema automatizado com interface de usuário.

---

## 10. Estrutura da Documentação

A documentação do projeto está organizada da seguinte forma:

| Documento | Descrição |
|-----------|-----------|
| `01-visao-geral.md` | Contexto, objetivos e escopo do projeto. |
| `02-requisitos.md` | Requisitos funcionais e não funcionais. |
| `03-regras-negocio.md` | Regras de negócio identificadas durante a modelagem. |
| `04-decisoes-modelagem.md` | Decisões técnicas adotadas na modelagem do banco de dados. |
| `05-relacionamentos.md` | Descrição dos relacionamentos entre as entidades. |
| `06-dicionario-dados.md` | Dicionário de dados de todas as tabelas do sistema. |
| `07-modelos.md` | Modelos conceitual, lógico e físico. |

---

## Autor

Projeto desenvolvido para fins de estudo em modelagem de banco de dados, SQL e documentação técnica, seguindo boas práticas de organização de projetos e versionamento com Git e GitHub.