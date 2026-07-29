# Decisões de Modelagem

## Objetivo

Este documento apresenta as principais decisões adotadas durante a modelagem do banco de dados do projeto **Sistema de Controle de Revezamento e Gestão Operacional**, explicando as motivações técnicas por trás de cada escolha.

O objetivo é registrar o raciocínio utilizado durante a modelagem, facilitando futuras manutenções e demonstrando as boas práticas aplicadas no desenvolvimento do banco de dados.

---

# 1. Separação entre Membro e Tipo de Membro

## Decisão

Foi criada a tabela **tb_tipo_membro** juntamente com a tabela associativa **tb_membro_tipo**, em vez de armazenar o tipo diretamente na tabela **tb_membro**.

## Justificativa

Um mesmo membro pode exercer mais de uma função dentro do sistema, como:

- Revezante
- Administrador
- Financeiro

Caso o tipo fosse armazenado diretamente em uma coluna da tabela de membros, seria necessário duplicar informações ou criar diversas colunas para representar múltiplos papéis.

A utilização de uma relação N:N torna o modelo mais flexível e evita redundância de dados.

---

# 2. Controle de Participação separado do Cadastro de Membros

## Decisão

Foi criada a tabela **tb_participacao** para registrar a presença semanal dos membros.

## Justificativa

O cadastro do membro representa uma informação permanente.

Já a participação representa um evento que ocorre diversas vezes ao longo do tempo.

Separar essas responsabilidades evita repetição de dados e mantém o histórico completo das participações.

---

# 3. Financeiro separado da Participação

## Decisão

As informações financeiras foram armazenadas na tabela **tb_financeiro**, independente da tabela de participação.

## Justificativa

Embora exista relação entre participação e pagamento, nem toda participação gera movimentação financeira.

Da mesma forma, podem existir pagamentos, pendências ou ajustes financeiros sem alteração na participação do membro.

Separar essas responsabilidades melhora a organização do modelo e facilita futuras expansões.

---

# 4. Utilização de tabelas de Status

## Decisão

Os status foram separados em tabelas próprias:

- tb_status_participacao
- tb_status_financeiro

## Justificativa

Ao invés de gravar textos diretamente nas tabelas principais, utiliza-se uma chave estrangeira.

Vantagens:

- Padronização dos valores
- Evita erros de digitação
- Facilita manutenção
- Permite inclusão de novos status sem alterar a estrutura do banco

---

# 5. Controle das Semanas

## Decisão

Foi criada a tabela **tb_semana**.

## Justificativa

Grande parte das informações do sistema é organizada semanalmente.

Centralizar esse período em uma tabela própria evita repetição das datas em diversas tabelas e garante consistência entre participação, escalas e financeiro.

---

# 6. Separação da Escala

## Decisão

A escala foi armazenada na tabela **tb_escala**.

## Justificativa

A escala representa o planejamento da operação, enquanto a participação representa o que efetivamente ocorreu.

Essa separação permite comparar posteriormente:

- Escalado
- Compareceu
- Horário realizado

Sem misturar responsabilidades.

---

# 7. Cadastro de Locais

## Decisão

Os locais foram normalizados na tabela **tb_local**.

## Justificativa

O mesmo local pode aparecer em diversas escalas.

Caso o nome fosse armazenado diretamente na tabela de escala haveria repetição de informações.

A normalização reduz redundância e facilita alterações futuras.

---

# 8. Exclusão Lógica

## Decisão

Os membros não são removidos fisicamente do banco.

Foi adotado o campo:

```
ativo BOOLEAN
```

## Justificativa

A exclusão física poderia comprometer o histórico de:

- participações;
- registros de horário;
- financeiro;
- escalas.

A exclusão lógica preserva a integridade histórica do sistema.

---

# 9. Utilização de Chaves Substitutas

## Decisão

Todas as tabelas utilizam chaves primárias inteiras.

Exemplo:

- id_membro
- id_semana
- id_participacao

## Justificativa

Chaves numéricas:

- simplificam relacionamentos;
- melhoram desempenho de índices;
- evitam problemas quando atributos de negócio precisam ser alterados.

---

# 10. Aplicação da Normalização

Durante a modelagem foram aplicados os princípios da normalização relacional.

## Primeira Forma Normal (1FN)

- Não existem grupos repetitivos.
- Todos os atributos possuem valores atômicos.

---

## Segunda Forma Normal (2FN)

- Todos os atributos dependem integralmente da chave primária.

---

## Terceira Forma Normal (3FN)

- Não existem dependências transitivas.
- Informações de status, tipos e locais foram separadas em tabelas específicas.

---

# 11. Flexibilidade para Evolução

O modelo foi desenvolvido visando futuras expansões.

Exemplos:

- inclusão de novos tipos de membros;
- novos status;
- novos locais;
- novos relatórios;
- controle de auditoria;
- autenticação de usuários.

Essas alterações poderão ser implementadas sem necessidade de grandes modificações na estrutura principal do banco.

---

# Considerações Finais

As decisões apresentadas neste documento tiveram como objetivo construir um modelo relacional organizado, normalizado, flexível e de fácil manutenção.

A estrutura prioriza a integridade dos dados, reduz redundâncias e facilita futuras evoluções do sistema, mantendo a separação de responsabilidades entre as entidades.