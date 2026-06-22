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

Cada registro de participação deve estar vinculado a um membro, a uma semana de referência e a um status de participação.

O sistema deve permitir múltiplos registros de participação para um mesmo membro dentro da mesma semana, quando necessário.

---

## RN05 - Controle de Escalas

O sistema deve permitir o gerenciamento das escalas de participação dos membros.

Cada escala deve estar associada a uma semana, um local e um horário definido.

O sistema deve permitir consultas de escalas passadas e futuras.

---

## RN06 - Status de Participação

Todo registro de participação deve possuir um status associado.

Os status devem ser cadastrados previamente e reutilizados pelo sistema, evitando a digitação livre de descrições.

---

## RN07 - Integridade dos Cadastros

Os registros obrigatórios do sistema devem possuir todas as informações essenciais preenchidas.

O sistema não deve permitir o cadastro de membros sem nome, semanas sem período definido ou tipos e status duplicados.

---

## RN08 - Controle Financeiro

O sistema deve permitir o registro e acompanhamento das informações financeiras dos membros por período semanal.

Cada registro financeiro deve possuir um status financeiro associado.
