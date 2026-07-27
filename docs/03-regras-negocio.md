# Regras de Negócio

## Objetivo

Este documento descreve as regras de negócio que orientam o funcionamento do Sistema de Controle de Revezamento. Essas regras definem restrições, validações e comportamentos que garantem a consistência dos dados e o correto funcionamento do sistema.

---

## RN01 – Cadastro de Membros

O sistema deve permitir o cadastro dos membros participantes das atividades.

Cada membro deve possuir, obrigatoriamente:

- Nome;
- Data de início;
- Situação (ativo ou inativo).

Informações complementares poderão ser registradas no campo de observação.

Os membros não deverão ser excluídos fisicamente do sistema, apenas inativados, preservando seu histórico.

---

## RN02 – Tipos de Membro

O sistema deve manter um cadastro de tipos de membro.

Exemplos:

- Revezante;
- Financeiro;
- Administrador.

Os tipos devem ser previamente cadastrados e poderão ser associados a diversos membros.

---

## RN03 – Associação entre Membros e Tipos

Um membro poderá possuir um ou mais tipos de atuação.

Um mesmo tipo poderá ser associado a diversos membros.

Essa associação será realizada pela tabela de relacionamento `tb_membro_tipo`.

---

## RN04 – Cadastro de Semanas

Cada semana deverá possuir uma data inicial e uma data final.

Não será permitido cadastrar semanas com períodos sobrepostos.

Uma mesma data deverá pertencer a apenas uma semana cadastrada.

---

## RN05 – Cadastro de Escalas

Cada escala deverá estar obrigatoriamente vinculada a:

- uma semana;
- um local;
- um horário de início;
- um horário de término.

Uma mesma escala poderá possuir diversos membros participantes.

---

## RN06 – Registro de Participações

Toda participação deverá estar vinculada a:

- um membro;
- uma escala;
- um status de participação.

Um mesmo membro poderá possuir diversas participações ao longo do tempo, sendo uma participação vinculada a cada escala em que atuar.

---

## RN07 – Registro de Horários

Cada participação poderá possuir um ou mais registros de horário.

Cada registro deverá armazenar:

- data da participação;
- horário de entrada;
- horário de saída;
- situação da verificação.

Essa estrutura permite registrar múltiplos períodos de atuação de um mesmo membro em um mesmo dia ou em dias diferentes da mesma semana.

---

## RN08 – Status de Participação

Todo registro de participação deverá possuir um status previamente cadastrado.

Os status permitidos são:

- Presente;
- Ausente;
- Justificado.

Novos status deverão ser cadastrados previamente antes de sua utilização.

---

## RN09 – Controle Financeiro

O controle financeiro será realizado por semana de referência.

Cada registro financeiro deverá estar vinculado a:

- um membro;
- uma semana;
- um status financeiro.

O sistema deverá permitir:

- pagamento integral;
- pagamento parcial;
- registro de adiantamento para semanas futuras.

---

## RN10 – Status Financeiro

Todo registro financeiro deverá possuir um status previamente cadastrado.

Os status atualmente utilizados são:

- Em aberto;
- Pendente;
- Pago.

---

## RN11 – Validação de Datas e Horários

O sistema deverá impedir registros inconsistentes.

Não serão permitidos:

- data inicial da semana posterior à data final;
- horários de saída anteriores aos horários de entrada;
- datas inexistentes;
- registros de pagamento com datas inválidas.

---

## RN12 – Integridade dos Dados

O sistema deverá garantir a integridade referencial entre todas as tabelas.

Não será permitido cadastrar registros que façam referência a membros, escalas, semanas, locais ou status inexistentes.

Os cadastros de domínio, como tipos de membro e status, não deverão possuir descrições duplicadas.

---

## RN13 – Exclusão de Cadastros

Os cadastros utilizados pelo sistema deverão preservar o histórico das informações.

Sempre que possível, registros deverão ser inativados em vez de excluídos fisicamente, garantindo a rastreabilidade das informações históricas.