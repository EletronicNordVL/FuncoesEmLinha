# 01 - Script SQL (Banco de Dados Acadêmico, Funções e UDFs)

Esta pasta reúne o script SQL completo para a criação, povoamento, consultas analíticas e implementação de funções customizadas no banco de dados .


## 🛠️ Ferramentas e Ambiente
* **SGBD**: MySQL (v8.0+)
* **Ferramentas Recomendadas**: MySQL Workbench, DBeaver ou MySQL CLI

## 📄 Conteúdo e Etapas do Script

O arquivo  está estruturado em 5 blocos principais de execução:

### 1. Estrutura do Banco de Dados (DDL)
* Criação do banco de dados.
* Criação das tabelas (com atributo ) e (tabela associativa com e).

### 2. Carga de Dados (DML)
* Inserção de registros de alunos, disciplinas e notas para validação do ambiente.

### 3. Consultas Analíticas Básicas e Avançadas
* **Ordenação**: Alunos ordenados por idade.
* **Junções com Filtro**: Alunos matriculados em disciplinas específicas (ex: Engenharia).
* **Agregação**: Média geral por aluno com restrição.
* **Junção Externa**:  para incluir alunos sem disciplinas cadastradas ().
* **Contagem**: Total de alunos por disciplina com filtro.

### 4. Funções de Linha (Built-in Functions)
* Manipulação de strings com e.
* Arredondamento numérico com.
* Inserção de timestamp com.

### 5. Função do Usuário (UDF - User Defined Function)
* 
  * Utiliza a redefinição de delimitador ().
  * Declaração de variáveis internas ().
  * Atribuição de consultas a variáveis via.
  * Estrutura condicional () comparando a média calculada com a  da disciplina.
  * Retorna uma string com o status (/).

## 🚀 Como Executar no MySQL Workbench

1. Conecte-se ao seu servidor MySQL.
2. Abra o arquivo do script SQL.
3. Execute o script completo ().
4. Verifique as tabelas criadas no Schema  e navegue pelas abas de resultado de cada consulta.
