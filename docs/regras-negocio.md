# Regras de Negócio

## RN01 - Cadastro de Membros

O sistema deve permitir o cadastro de membros participantes das atividades.

Cada membro possui informações básicas de identificação e pode estar ativo ou inativo.

---

## RN02 - Tipos de Membro

Um membro pode exercer uma ou mais funções dentro da organização.

Exemplos de funções:

* Revezante
* Financeiro
* Administrador

---

## RN03 - Associação entre Membros e Funções

Um mesmo membro pode possuir mais de uma função simultaneamente.

Da mesma forma, uma função pode ser atribuída a vários membros.

Por esse motivo, foi adotado um relacionamento muitos-para-muitos entre membros e funções.

---

## RN04 - Registro de Participação

O sistema deve registrar a participação dos membros nas atividades programadas.

Cada registro de participação deve estar vinculado a um membro e a uma data ou período de referência.

---

## RN05 - Controle de Escalas

O sistema deve permitir o gerenciamento das escalas de participação dos membros, possibilitando consultas históricas e futuras.
