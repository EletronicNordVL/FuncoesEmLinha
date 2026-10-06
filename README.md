# Sistema de Gestão Acadêmica - SQL, Funções e UDFs em MySQL

Este repositório contém o projeto completo de banco de dados relacional para um **Sistema de Gestão Acadêmica** desenvolvido em **MySQL**. O projeto abrange desde a modelagem e criação da estrutura (DDL) até consultas relacionais avançadas, funções em linha (*built-in functions*) e funções definidas pelo usuário (*User-Defined Functions - UDF*).


## 📁 Estrutura do Repositório

* Contém o script SQL unificado com a criação da base de dados , carga inicial de dados, consultas analíticas e implementação de UDF.

## 🗄️ Estrutura do Banco de Dados

O banco de dados relacional é composto por três tabelas conectadas:
* Armazena os dados cadastrais dos discentes.
* Registra as disciplinas oferecidas.
* Tabela associativa (N:N entre Aluno e Disciplina) que registra o desempenho acadêmico.


## 💻 Recursos e Tópicos Implementados

### 1. DDL & DML
* Definição de chaves primárias e estrangeiras com integridade referencial.
* Inserção de massa de testes simulando turmas, alunos e notas.

### 2. Consultas Relacionais (DQL)
* Junções de tabelas.
* Agrupamentos e filtros sobre agregados.
* Ordenação de dados.

### 3. Funções de Linha (Built-in)
* **Texto**:  para caixa alta e  para contagem de caracteres.
* **Matemática**:  para arredondamento de médias para 2 casas decimais.
* **Data/Hora**:  para registro do timestamp da execução da consulta.

### 4. Função Definida pelo Usuário (UDF)
* Função customizada que recebe a matrícula do aluno e o código da disciplina, calcula a média, compara dinamicamente com a exigida pela disciplina e retorna a situação final ( ou ).
