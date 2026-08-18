# 08 - Validação de Dados

## 1. Objetivo

Esta etapa tem como objetivo validar a integridade e a consistência dos dados inseridos no banco de dados do projeto **Sistema de Controle de Revezamento e Gestão Operacional**.

Foram realizadas consultas SQL para verificar se os registros atendem às regras definidas na modelagem e se existem inconsistências que possam comprometer o funcionamento do sistema.

As consultas de validação foram armazenadas no arquivo:

`sql/04-selects-validacao.sql`

---

## 2. Estratégia de Validação

A validação foi realizada por meio de consultas `SELECT`, desenvolvidas para verificar diferentes situações relacionadas aos dados cadastrados.

Entre os pontos analisados estão:

* existência de registros esperados;
* integridade dos relacionamentos entre tabelas;
* existência de dados sem correspondência;
* identificação de registros que não atendem às regras estabelecidas;
* consistência dos dados cadastrados.

A execução das consultas foi realizada diretamente no banco de dados PostgreSQL, utilizando o schema `academico`.

---

## 3. Resultado das Validações

As consultas previstas no script `04-selects-validacao.sql` foram executadas individualmente e tiveram seus resultados analisados.

### Consultas 1 a 8

As consultas de **1 a 8** foram executadas com sucesso e apresentaram os resultados esperados.

Não foram identificadas inconsistências nos dados analisados por essas consultas.

### Consulta 9

A consulta **9** retornou registros conforme o resultado esperado para a validação proposta.

O resultado foi considerado correto e não foram identificados problemas relacionados à consulta.

### Consultas 10 a 14

As consultas de **10 a 14** não retornaram registros.

Esse resultado foi considerado **positivo**, pois as consultas foram elaboradas para identificar possíveis inconsistências ou situações que não deveriam existir nos dados.

A ausência de registros indica que, no momento da validação, **não foram encontrados dados que apresentassem os problemas verificados por essas consultas**.

### Consulta 15

A consulta **15** retornou os registros esperados e o resultado foi considerado correto.

---

## 4. Conclusão

Após a execução das consultas de validação, os dados cadastrados apresentaram comportamento consistente com o modelo desenvolvido e com as regras estabelecidas para o projeto.

As consultas que tinham como objetivo identificar possíveis inconsistências não retornaram registros, indicando que não foram encontradas ocorrências dos problemas avaliados.

Dessa forma, a etapa de validação dos dados foi concluída com sucesso, não sendo identificadas correções necessárias nos registros analisados.

A validação poderá ser executada novamente após novos cadastros ou alterações nos dados, garantindo a manutenção da consistência do banco durante a evolução do projeto.